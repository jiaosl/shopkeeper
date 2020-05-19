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
                child: Text("丰e足食"),
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

  Row buildUserName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("账号"),
        Container(
          width: 200.0,
          child: EditText(
            hint: "请输入手机号/丰声号",
            controller: userName,
            includingborder: true,
          ),
        )
      ],
    );
  }

  Row buildPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("密码"),
        Container(
          width: 200.0,
          child: EditText(
            hint: "请输入密码",
            controller: userName,
            obscure: true,
            keyboardType: TextInputType.visiblePassword,
            includingborder: true,
          ),
        )
      ],
    );
  }

  Row buildCaptcha() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("验证码"),
        Container(
          width: 200.0,
          child: EditText(
            hint: "验证码",
            controller: userName,
            includingborder: true,
          ),
        ),
        Container(
            child: Text("点击获取验证码"),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey[400], width: 2)))
      ],
    );
  }

  Row buildForgetPwd() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "忘记密码",
          style: TextStyle(
            color: const Color(0xffff9900),
            decoration: TextDecoration.underline,
            fontSize: 24.0,
          ),
        )
      ],
    );
  }

  FlatButton buildLogin() {
    return FlatButton(
      color: Colors.blue,
      highlightColor: Colors.blue[700],
      colorBrightness: Brightness.dark,
      splashColor: Colors.grey,
      child: Text("Submit"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      onPressed: () {},
    );
  }

  OutlineButton buildRegister() {
    return OutlineButton(
      onPressed: () {},
      child: Text("边线按钮"),
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
