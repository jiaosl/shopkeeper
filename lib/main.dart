import 'dart:developer';

import 'package:fezs_shopkeeper/application.dart';
import 'package:fezs_shopkeeper/pages/home_page.dart';
import 'package:fezs_shopkeeper/pages/tabs.dart';
import 'package:flutter/material.dart';

void main() {
  Application.getInstance().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tabs(),
      // onGenerateRoute: Application.getInstance().router.generator,
    );
  }
}


// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';

// List<CameraDescription> cameras;

// Future<void> main() async {
//   cameras = await availableCameras();
//   runApp(CameraApp());
// }

// class CameraApp extends StatefulWidget {
//   @override
//   _CameraAppState createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   CameraController controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(cameras[0], ResolutionPreset.medium);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return AspectRatio(
//         aspectRatio:
//         controller.value.aspectRatio,
//         child: CameraPreview(controller));
//   }
// }
