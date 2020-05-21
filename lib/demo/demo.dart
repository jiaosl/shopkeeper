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
    //NavigatorUtil.jump(context,'${Routes.login}?${RountesParamsKey.USER_ID}=$userId'),

    //6.自动序列化
    //flutter packages pub run build_runner build
    //flutter packages pub run build_runner build --delete-conflicting-outputs  //删除并重新创建.g.dart文件
    //flutter packages pub run build_runner wacth 监控生成文件，如果有改动时自动生成/更新 .g.dart 文件

    //7.api
    // 返回 LoginEntity
    // DioManager().request<LoginEntity>(
    //   NWMethod.POST,
    //   NWApi.loginPath,
    //   params: {"account": "421789838@qq.com", "password": "123456"},
    //   success: (data) {
    //       print("success data = $data"});
    //   }, error: (error) {
    //       print("error code = ${error.code}, massage = ${error.message}");
    //   }
    // );

    // // 返回 List
    // DioManager().requestList<LoginEntity>(
    //   NWMethod.POST,
    //   NWApi.queryListJsonPath,
    //   params: {"account": "421789838@qq.com", "password": "123456"},
    //   success: (data) {
    //       print("success data = $data"});
    //   }, error: (error) {
    //       print("error code = ${error.code}, massage = ${error.message}");
    //   }
    // );

    //8.设置宽高和字体大小
    // ScreenUtil.setWidth(44)
    // ScreenUtil.setHeight(42)
    // ScreenUtil.setSp(42)

    //9.toast
    // Fluttertoast.showToast(
    //     msg: "This is Center Short Toast",
    //     toastLength: Toast.LENGTH_SHORT,
    //     gravity: ToastGravity.CENTER,
    //     timeInSecForIos: 1,
    //     backgroundColor: Colors.red,
    //     textColor: Colors.white,
    //     fontSize: 16.0
    // );

    //10.widget追加点击事件
    //  GestureDetector(
    //                     onTap: () {
    //                       NavigatorUtil.jump(context, Routes.login);
    //                       //       Navigator.push(context, MaterialPageRoute(builder: (context) {
    //                       //   return VideoPage();
    //                       //  }));
    //                     },
    //                     child: Text('去登陆页面'),
    //                   ),

    //对象转json字符串
    //import 'dart:convert' as convert;
    //convert.jsonEncode(bean)

    //其他  
    //微信sdk  : https://www.jianshu.com/p/658b4d9b960f
    //保存tab栏目状态  :  https://cloud.tencent.com/developer/article/1507094
  }
}
