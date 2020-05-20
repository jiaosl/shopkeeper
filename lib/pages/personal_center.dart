import 'package:fezs_shopkeeper/mixin/toast_mixin.dart';
import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class PersonalCenterPage extends StatefulWidget {
  @override
  _PersonalCenterPageState createState() => _PersonalCenterPageState();
}

class _PersonalCenterPageState extends State<PersonalCenterPage> with AutomaticKeepAliveClientMixin, ToastMixin{
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

  @override
  bool get wantKeepAlive => true;
}
