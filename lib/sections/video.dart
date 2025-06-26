import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  final String videoAssetPath;
  final String imagePath;
  final double maxWidth;

  const Video({
    super.key,
    required this.videoAssetPath,
    required this.imagePath,
    this.maxWidth = 600,
  });

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
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
      await _controller.setLooping(false);
      await _controller.setVolume(0); // Required for autoplay on most browsers

      setState(() => _isInitialized = true);
    } catch (e) {
      debugPrint('Video error: $e');
      // Fallback implementation
      setState(() => _isInitialized = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              // Use Image.asset if it's local
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          const Center(child: CircularProgressIndicator()),
        ],
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        // Use the available screen width, but cap it at 600
        final double screenWidth = constraints.maxWidth;
        final double videoWidth = screenWidth > 600 ? 600 : screenWidth;

        // Make sure the controller is initialized
        if (!_controller.value.isInitialized) {
          return const SizedBox(); // or a loading spinner
        }

        final double videoHeight = videoWidth / _controller.value.aspectRatio;
        return Center(
          child: SizedBox(
            width: videoWidth,
            height: videoHeight,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  clipBehavior: Clip.hardEdge,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    child: VideoPlayer(_controller),
                  ),
                ),
                // Controls Overlay
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 4,
                          width: 500,
                          child: VideoProgressIndicator(
                            _controller,
                            allowScrubbing: true,
                            padding: EdgeInsets.zero,
                            colors: VideoProgressColors(
                              playedColor: Colors.red,
                              bufferedColor: Colors.grey,
                              backgroundColor: Colors.black54,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.replay_10,
                                color: Colors.white,
                                size: 24,
                              ),
                              onPressed: () {
                                final current = _controller.value.position;
                                final target =
                                    current - const Duration(seconds: 10);
                                _controller.seekTo(
                                  target < Duration.zero
                                      ? Duration.zero
                                      : target,
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                _controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: Colors.white,
                                size: 28,
                              ),
                              onPressed: () {
                                setState(() {
                                  _controller.value.isPlaying
                                      ? _controller.pause()
                                      : _controller.play();
                                });
                              },
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.forward_10,
                                color: Colors.white,
                                size: 24,
                              ),
                              onPressed: () {
                                final current = _controller.value.position;
                                final target =
                                    current + const Duration(seconds: 10);
                                final max = _controller.value.duration;
                                _controller.seekTo(target > max ? max : target);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
