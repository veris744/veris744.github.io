import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatefulWidget {
  final String videoAssetPath;

  const VideoBackground({super.key, required this.videoAssetPath});

  @override
  _VideoBackgroundState createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initVideo();
  }

  Future<void> _initVideo() async {
    try {
      if (kIsWeb) {
        _controller = VideoPlayerController.networkUrl(
          Uri.parse(widget.videoAssetPath),
          videoPlayerOptions: VideoPlayerOptions(
            allowBackgroundPlayback: false,
            mixWithOthers: false,
          ),
        );
      } else {
        _controller = VideoPlayerController.asset(widget.videoAssetPath);
      }

      await _controller.initialize();

      // Critical for web autoplay
      await _controller.setLooping(true);
      await _controller.setVolume(0); // Required for autoplay on most browsers

      // Workaround for Chrome's autoplay policies
      if (kIsWeb) {
        await Future.delayed(const Duration(milliseconds: 300));
      }

      await _controller.play();
      setState(() => _isInitialized = true);
    } catch (e) {
      debugPrint('Video error: $e');
      // Fallback implementation
      setState(() => _isInitialized = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight = screenHeight * 0.7;

    if (!_isInitialized) {
      return Container(
        height: containerHeight,
        color: Colors.black,
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return SizedBox(
      height: containerHeight,
      width: double.infinity,
      child: FittedBox(
        fit: BoxFit.cover, // Ensures the video covers the container
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          width: _controller.value.size.width,
          height: _controller.value.size.height,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
