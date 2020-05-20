import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PersonalCenter extends StatefulWidget {
  @override
  _PersonalCenterState createState() => _PersonalCenterState();
}

class _PersonalCenterState extends State<PersonalCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("个人中心"),
        centerTitle: true,
      ),
      body: StoreProvider(
        store: store,
        child: StreamBuilder(
            stream: null,
            builder: (context, snapdate) {
              return Text("个人中心");
            }),
      ),
    );
  }
}
