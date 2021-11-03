import 'package:prepreocessor_starter/domain/models/video.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class EmbeddedVideoPlayer extends StatefulWidget {
  final VideoModel video;

  const EmbeddedVideoPlayer({Key key, this.video}) : super(key: key);
  @override
  _EmbeddedVideoPlayerState createState() => _EmbeddedVideoPlayerState();
}

class _EmbeddedVideoPlayerState extends State<EmbeddedVideoPlayer> {
  VideoPlayerController _controller;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.video.url)
      ..initialize().then((_) {
        setState(() async {
          await _controller.setLooping(true);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Stack(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isPlaying = false;
                  });
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  }
                },
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(
                    _controller,
                  ),
                ),
              ),
              !isPlaying
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                onPressed: () {
                                  setState(() {
                                    isPlaying = true;
                                    _controller.play();
                                  });
                                }),
                          ],
                        ),
                      ),
                    )
                  : Container(),
            ],
          )
        : Container(
            height: 200,
            color: Colors.black,
            child: Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
