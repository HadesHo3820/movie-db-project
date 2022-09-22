import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoDialog extends StatefulWidget {
  final String videoId;
  const YoutubeVideoDialog({Key? key, required this.videoId}) : super(key: key);

  @override
  State<YoutubeVideoDialog> createState() => _YoutubeVideoDialogState();
}

class _YoutubeVideoDialogState extends State<YoutubeVideoDialog> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: widget.videoId,
        flags: const YoutubePlayerFlags(autoPlay: true, loop: true));
    super.initState();
  }

  @override
  void deactivate() {
    _controller.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        onReady: () => setState(() {}),
      ),
      builder: (context, player) => Dialog(
        insetPadding: const EdgeInsets.all(10),
        child: SizedBox(
          height: 450,
          width: double.infinity,
          child: player,
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
