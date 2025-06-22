import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeVideoEol extends StatefulWidget {
  const YoutubeVideoEol({super.key});

  @override
  State<YoutubeVideoEol> createState() => _YoutubeVideoEolState();
}

class _YoutubeVideoEolState extends State<YoutubeVideoEol> {
  final YoutubePlayerController _controller = YoutubePlayerController.fromVideoId(
      videoId: 'MCdZHNheqqQ',
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
