import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//颜色池
class ColorStyle {
  //主色
  //辅色:
  //文字用色
  static const Color ffffff = const Color(0XFFFFFFFF);
}

//文字大小池
class TvSize {
  static final double size_36 = ScreenUtil().setSp(36);
}

//Text样式池
class TvStyle {
  static TextStyle ffffff_36 =
      TextStyle(color: ColorStyle.ffffff, fontSize: TvSize.size_36);
}
