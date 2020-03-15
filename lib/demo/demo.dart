import 'package:fezs_shopkeeper/application.dart';
import 'package:fezs_shopkeeper/consts/params_key.dart';
import 'package:fezs_shopkeeper/event/action/jump_to_login_event.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("data"),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    //1.注册eventbus
    Application.getInstance()
        .eventBus
        .on<JumpToLogin>()
        .listen((event) async {});
    //发送eventbus
    Application.getInstance().eventBus.fire(new JumpToLogin());

    //2.使用sp存储、获取数据
    Application.getInstance().sp.setString(SpParamsKey.USER_ID, "1");
    Application.getInstance().sp.getString(SpParamsKey.USER_ID);

    //3.stream数据流使用
    //-->查看main.dart里StreamBuilder
    //-->查看user_model.dart类

    //4.redux使用
    //-->查看user_model.dart类的......store.dispatch(UserUpdate(user: user));
    //-->查看redux目录

    //5.路由跳转
    //String userId = "1"; 
    //Application.getInstance().router.navigateTo(context,'${Routes.login}?${RountesParamsKey.USER_ID}=$userId'),

    //自动序列化
    //flutter packages pub run build_runner build
    //flutter packages pub run build_runner build --delete-conflicting-outputs  //删除并重新创建.g.dart文件
  }
}
