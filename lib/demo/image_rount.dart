import 'dart:io';

import 'package:fezs_shopkeeper/demo/demo_webview.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageRoutesPage extends StatefulWidget {
  ImageRoutesPage({Key key}) : super(key: key);

  @override
  _ImageRoutesPageState createState() => _ImageRoutesPageState();
}

class _ImageRoutesPageState extends State<ImageRoutesPage> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(
        source: ImageSource.gallery, maxHeight: 100, maxWidth: 100);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
      body: Center(
        child: Column(children: [
          _image == null ? Text('No image selected.') : Image.file(_image),
          Text(
            "\n\n",
          ),
          GestureDetector(
            onTap: getImage,
            child: Container(
              child: Text("选择图片"),
            ),
          ),
          Text(
            "\n\n",
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new DemoWebViewPage()));
            },
            child: Container(
              child: Text("去webView页面"),
            ),
          ),
          Text(
            "\n\n",
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(context,
              //     new MaterialPageRoute(builder: (context) => new VideoApp()));
            },
            child: Container(
              child: Text("去视频页面"),
            ),
          )
        ]),
      ),
    );
  }
}
