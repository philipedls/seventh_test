import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:seventh_app/presentation/views/home/widgets/video_viewer/video_viewer_store.dart';
import 'package:video_viewer/video_viewer.dart';

class VideoViewerWidget extends StatefulWidget {
  final String? videoURL;
  const VideoViewerWidget({Key? key, this.videoURL}) : super(key: key);

  @override
  _VideoViewerWidgetState createState() => _VideoViewerWidgetState();
}

class _VideoViewerWidgetState extends State<VideoViewerWidget> {
  final _store = VideoViewerStore();

  @override
  void dispose() {
    _store.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: VideoViewer(
        controller: _store.controller,
        autoPlay: _store.autoPlay,
        enableFullscreenScale: _store.fullScreen,
        style: VideoViewerStyle(
          loading: CircularProgressIndicator(),
          header: Text(widget.videoURL ?? 'VideoHeader'),
        ),
        onFullscreenFixLandscape: true,
        source: {
          "Seventh Media": VideoSource(
            video: VideoPlayerController.network(
              widget.videoURL.toString(),
              videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
            ),
          )
        },
      ),
    );
  }
}
