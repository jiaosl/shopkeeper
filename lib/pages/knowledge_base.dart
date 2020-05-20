import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class KnowledgeBase extends StatefulWidget {
  @override
  _KnowledgeBaseState createState() => _KnowledgeBaseState();
}

class _KnowledgeBaseState extends State<KnowledgeBase> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("知识库"),
        centerTitle: true,
      ),
      body: StoreProvider(
        store: store,
        child: StreamBuilder(
            stream: null,
            builder: (context, snapdate) {
              return Text("知识库");
            }),
      ),
    );
  }
}