import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeVideoNtr extends StatefulWidget {
  const YoutubeVideoNtr({super.key});

  @override
  State<YoutubeVideoNtr> createState() => _YoutubeVideoNtrState();
}

class _YoutubeVideoNtrState extends State<YoutubeVideoNtr> {
  final YoutubePlayerController _controller = YoutubePlayerController.fromVideoId(
      videoId: 'waJktW4Bhzg',
      autoPlay: false,
      params: const YoutubePlayerParams(
        showFullscreenButton: true,
      ),
    );

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: _controller,
      aspectRatio: 16 / 9,
      builder: (context, player) {
        return player;
      },
    );
  }
}
