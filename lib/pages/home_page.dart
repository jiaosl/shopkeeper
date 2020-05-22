import 'package:fezs_shopkeeper/application.dart';
import 'package:fezs_shopkeeper/model/user_model.dart';
import 'package:fezs_shopkeeper/pages/login_page.dart';
import 'package:fezs_shopkeeper/pages/tabs.dart';
import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Application.getInstance().initScreen(context);
    return StoreProvider(
      store: store,
      child: new StoreBuilder<AppState>(builder: (context, store) {
        return store.state.user == null ? LoginPage() : TabsPage();
      }),
    );
  }
}
