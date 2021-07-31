import 'package:mobx/mobx.dart';
import 'package:video_viewer/video_viewer.dart';

part 'video_viewer_store.g.dart';

class VideoViewerStore = _VideoViewerStore with _$VideoViewerStore;

abstract class _VideoViewerStore with Store {
  final VideoViewerController controller = VideoViewerController();

  bool autoPlay = true;

  bool fullScreen = true;

  String header = "VideoHeader";

  String sourceKey = "Seventh Media";
}
