import 'package:fezs_shopkeeper/application.dart';
import 'package:fezs_shopkeeper/components/base/edit_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userName;

  @override
  Widget build(BuildContext context) {
    Application.getInstance().initScreen(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            '登录',
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Center(
                child: Text(
                  "丰e足食",
                  style: TextStyle(fontSize: 80),
                ),
              ),
              buildUserName(),
              buildPassword(),
              buildCaptcha(),
              buildForgetPwd(),
              buildLogin(),
              buildRegister(),
            ],
          ),
        ));
  }

  Widget buildUserName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            alignment: Alignment.centerRight,
            width: Application.getInstance().screenUtil.setWidth(150),
            height: Application.getInstance().screenUtil.setWidth(120),
            child: Text("账号")),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          width: Application.getInstance().screenUtil.setWidth(800),
          child: EditText(
            hint: "请输入手机号/丰声号",
            controller: userName,
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            alignment: Alignment.centerRight,
            width: Application.getInstance().screenUtil.setWidth(150),
            height: Application.getInstance().screenUtil.setWidth(120),
            child: Text("密码")),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          width: Application.getInstance().screenUtil.setWidth(800),
          child: EditText(
            hint: "请输入密码",
            controller: userName,
            obscure: true,
            keyboardType: TextInputType.visiblePassword,
          ),
        )
      ],
    );
  }

  Widget buildCaptcha() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            alignment: Alignment.centerRight,
            width: Application.getInstance().screenUtil.setWidth(150),
            height: Application.getInstance().screenUtil.setWidth(120),
            child: Text("验证码")),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          width: Application.getInstance().screenUtil.setWidth(500),
          child: EditText(
            hint: "验证码",
            controller: userName,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: buildVerificationCode(),
          height: Application.getInstance().screenUtil.setHeight(100),
        )
      ],
    );
  }

  Widget buildForgetPwd() {
    return Container(
        alignment: Alignment.centerRight,
        child: Text(
          "忘记密码",
          style: TextStyle(
            color: const Color(0xffff9900),
            decoration: TextDecoration.underline,
            fontSize: 24.0,
          ),
        ));
  }

  FlatButton buildLogin() {
    return FlatButton(
      color: Colors.blue,
      highlightColor: Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      child: Container(
          alignment: Alignment.center,
          width: Application.getInstance().screenUtil.setWidth(800),
          child: Text("Submit")),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      onPressed: () {},
    );
  }

  OutlineButton buildRegister() {
    return OutlineButton(
      onPressed: () {},
      child: Container(
          alignment: Alignment.center,
          width: Application.getInstance().screenUtil.setWidth(800),
          child: Text("边线按钮")),
      textColor: Colors.red,
      splashColor: Colors.green,
      highlightColor: Colors.black,
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5)),
    );
  }

  OutlineButton buildVerificationCode() {
    return OutlineButton(
      onPressed: () {},
      child: Container(child: Text("获取验证码")),
      textColor: Colors.red,
      splashColor: Colors.green,
      highlightColor: Colors.black,
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
