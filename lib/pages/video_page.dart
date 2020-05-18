import 'package:fezs_shopkeeper/components/my_camera.dart';
import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key key}) : super(key: key);

  @override
  _PicturePageState createState() => _PicturePageState();
}

class _PicturePageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '视频',
          ),
          centerTitle: true,
        ),
        body: Container(
          // child: Text("视频页面"),
          child: MyCamera(),
        ));
  }
}
