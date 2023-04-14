import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerView extends StatefulWidget {
  final String url;
  const YoutubePlayerView(
      {Key? key, required this.url})
      : super(key: key);

  @override
  State<YoutubePlayerView> createState() => _YoutubePlayerViewState();
}

class _YoutubePlayerViewState extends State<YoutubePlayerView> {
  late YoutubePlayerController _videoPlayerController;

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
   _videoPlayerController = YoutubePlayerController(
       initialVideoId: YoutubePlayer.convertUrlToId(widget.url) ?? '',
     flags: const YoutubePlayerFlags(
       autoPlay: false,
       mute: true,
       isLive: false,
     ),
   );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: _videoPlayerController,
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.deepOrangeAccent,
          progressColors: const ProgressBarColors(
            playedColor: Colors.deepOrangeAccent,
            handleColor: Colors.deepOrange,
          ),
        ),
        builder: (context, player) {
          return
          Container(
            child: player,
          );
        }
    );
  }
}
