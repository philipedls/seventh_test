import 'package:flutter/material.dart';

import './constants/constants.dart';
import './widgets/widgets.dart';
import '../../../data/models/models.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String fileName = 'bunny.mp4';
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _store = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: FutureBuilder<SeventhMediaModel?>(
            future: _store.fetchSeventhMediaByName(widget.fileName),
            builder:
                (BuildContext _, AsyncSnapshot<SeventhMediaModel?> snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Center(
                    child: Text(LOADING_VIDEO),
                  );

                case ConnectionState.none:
                  return Center(child: Text(VIDEO_FAILED));

                default:
                  return Container(
                    padding: EdgeInsets.all(8.0),
                    child: VideoViewerWidget(
                      videoURL: snapshot.data?.baseUrl,
                    ),
                  );
              }
            }),
      ),
    );
  }
}
