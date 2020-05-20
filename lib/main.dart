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
