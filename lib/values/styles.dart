import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//颜色池
class TvColor {
  static const int _transparent = 0x00FFFFFF;
  static const int _theme = 0x00FFFFFF;
  static const int _color_e8ad74 = 0XFFE8AD74;
  static const int _color_777777 = 0XFF777777;

  //主色
  //辅色:
  //文字用色
  static const Color color_e8ad74 = const Color(_color_e8ad74);
  static const Color color_777777 = const Color(_color_777777);
}

//文字大小池
class TvSize {
  static final double size_72 = ScreenUtil().setSp(72);
}

//Text样式池
class TvStyle {
  static TextStyle style_e8ad74_72 =
      TextStyle(color: TvColor.color_e8ad74, fontSize: TvSize.size_72);
  static TextStyle style_777777_72 =
      TextStyle(color: TvColor.color_777777, fontSize: TvSize.size_72);
}
