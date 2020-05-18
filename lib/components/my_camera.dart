import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class MyCamera extends StatefulWidget {
  MyCamera({Key key}) : super(key: key);

  @override
  _MyCameraState createState() => _MyCameraState();
}

class _MyCameraState extends State<MyCamera> {
  @override
  Widget build(BuildContext context) {
    CameraController controller;
    List<CameraDescription> cameras;
    @override
    void initState() async {
      super.initState();
      cameras = await availableCameras();
      controller = CameraController(cameras[0], ResolutionPreset.medium);
      controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      });
    }

    @override
    void dispose() {
      controller?.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      if (!controller.value.isInitialized) {
        return Container();
      }
      return AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: CameraPreview(controller));
    }
  }
}
