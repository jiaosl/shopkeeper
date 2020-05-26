import 'package:fezs_shopkeeper/application.dart';
import 'package:flutter/material.dart';

/**
 * 输入框
 */
class EditText extends StatefulWidget {
  String hint; //提示内容
  TextEditingController controller; //控制器
  bool includingborder; //是否边框
  TextInputType keyboardType; //输入类型
  bool obscure; //密文 ?

  EditText({
    Key key,
    this.hint = "",
    this.controller,
    this.includingborder = false,
    this.obscure = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  _EditTextState createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Application.getInstance().screenUtil.setHeight(120),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
        child: TextField(
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            hintText: widget.hint,
            prefixIcon: null,
            border: InputBorder.none,
          ),
          obscureText: widget.obscure,
          //光标设置
          // cursorWidth: 2,
          // cursorRadius: Radius.circular(5),
          // cursorColor: Colors.red
        ),
      ),
      decoration: widget.includingborder
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey[400], width: 1))
          : BoxDecoration(
              // 下滑线浅灰色，宽度1像素
              border: Border(
                  bottom: BorderSide(color: Colors.grey[400], width: 1.0))),
    );
  }
}
