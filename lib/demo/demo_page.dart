import 'package:fezs_shopkeeper/model/user_model.dart';
import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class DemoPage extends StatefulWidget {
  var userModel = DemoUserModel();
  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: StoreProvider(
        store: store,
        child: new StoreBuilder<AppState>(builder: (context, store) {
          return StreamBuilder(
              stream: widget.userModel.outData,
              builder: (context, snapdate) {
                return null;
              });
        }),
      ),
    );
  }
}
