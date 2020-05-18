import 'package:flutter/material.dart';

class MyVideo extends StatefulWidget {
  MyVideo({Key key}) : super(key: key);

  @override
  _MyVideoState createState() => _MyVideoState();
}

class _MyVideoState extends State<MyVideo> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("test"),
    );
  }
}