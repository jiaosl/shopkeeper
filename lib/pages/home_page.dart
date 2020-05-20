import 'package:fezs_shopkeeper/application.dart';
import 'package:fezs_shopkeeper/model/user_model.dart';
import 'package:fezs_shopkeeper/pages/tabs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Application.getInstance().initScreen(context);
    return TabsPage();
  }
}
