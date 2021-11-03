import 'package:prepreocessor_starter/domain/models/video.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoWidget extends StatefulWidget {
  final VideoModel video;

  const YoutubeVideoWidget({Key key, this.video}) : super(key: key);
  @override
  _YoutubeVideoWidgetState createState() => _YoutubeVideoWidgetState();
}

class _YoutubeVideoWidgetState extends State<YoutubeVideoWidget> {
  YoutubePlayerController _youtubeVideoController;

  @override
  void initState() {
    super.initState();

    _youtubeVideoController = YoutubePlayerController(
      initialVideoId: widget.video.url,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _youtubeVideoController,
      liveUIColor: Colors.amber,
      width: double.infinity,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _youtubeVideoController.dispose();
  }
}
