import 'package:fezs_shopkeeper/application.dart';
import 'package:fezs_shopkeeper/bean/user.dart';
import 'package:fezs_shopkeeper/model/user_model.dart';
import 'package:fezs_shopkeeper/pages/login_page.dart';
import 'package:fezs_shopkeeper/pages/picture_page.dart';
import 'package:fezs_shopkeeper/pages/video_page.dart';
import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:fezs_shopkeeper/routes/routes.dart';
import 'package:fezs_shopkeeper/utils/navigator_utils.dart';
// import 'package:fezs_shopkeeper/routes/routes.dart';
// import 'package:fezs_shopkeeper/utils/navigator_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomePage extends StatefulWidget {
  var userModel = UserModel();
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Application.getInstance().initScreen(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: StoreProvider(
        store: store,
        child: StreamBuilder(
          stream: widget.userModel.outData,
          builder: (context, snapdate) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '年龄为:',
                  ),
                  Text(
                    snapdate.data == null
                        ? '0'
                        : '${(snapdate.data as User).age}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  Text('store中的user的age为 : ${store.state.user.age}'),
                  GestureDetector(
                    onTap: () {
                      NavigatorUtil.jump(context, Routes.login);
                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return LoginPage();
                      //  }));
                    },
                    child: Text('去登陆页面'),
                  ),
                  GestureDetector(
                    onTap: () {
                      NavigatorUtil.jump(context, Routes.picture);
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return PicturePage();
                      //  }));
                    },
                    child: Text('去图片页面'),
                  ),
                  GestureDetector(
                    onTap: () {
                      NavigatorUtil.jump(context, Routes.video);
                      //       Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return VideoPage();
                      //  }));
                    },
                    child: Text('去视频页面'),
                  ),
                  GestureDetector(
                    onTap: () {
                      NavigatorUtil.jump(context, Routes.login);
                      //       Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return VideoPage();
                      //  }));
                    },
                    child: Text('去登陆页面'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.userModel.addAge,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
