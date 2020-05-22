import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class ChangePhoneNumberPage extends StatefulWidget {
  @override
  _ChangePhoneNumberPageState createState() => _ChangePhoneNumberPageState();
}

class _ChangePhoneNumberPageState extends State<ChangePhoneNumberPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("手改手机号"),
        centerTitle: true,
      ),
      body: StoreProvider(
        store: store,
        child: new StoreBuilder<AppState>(builder: (context, store) {
          return StreamBuilder(
              stream: null,
              builder: (context, snapdate) {
                return Center(child: Text("修改手机号"));
              });
        }),
      ),
    );
  }
}
