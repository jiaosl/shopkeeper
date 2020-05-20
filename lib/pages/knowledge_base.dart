import 'package:fezs_shopkeeper/mixin/toast_mixin.dart';
import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class KnowledgeBasePage extends StatefulWidget {
  @override
  _KnowledgeBasePageState createState() => _KnowledgeBasePageState();
}

class _KnowledgeBasePageState extends State<KnowledgeBasePage>
    with AutomaticKeepAliveClientMixin, ToastMixin {
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

  @override
  bool get wantKeepAlive => true;
}
