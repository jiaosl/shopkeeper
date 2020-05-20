import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class CustomerManagement extends StatefulWidget {
  @override
  _CustomerManagementState createState() => _CustomerManagementState();
}

class _CustomerManagementState extends State<CustomerManagement> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("客户管理"),
        centerTitle: true,
      ),
      body: StoreProvider(
        store: store,
        child: StreamBuilder(
            stream: null,
            builder: (context, snapdate) {
              return Text("客户管理");
            }),
      ),
    );
  }
}
