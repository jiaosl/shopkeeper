import 'package:fezs_shopkeeper/application.dart';
import 'package:fezs_shopkeeper/consts/params_key.dart';
import 'package:fezs_shopkeeper/pages/home_page.dart';
import 'package:fezs_shopkeeper/utils/log_manager.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

class NavigatorUtil {
  // 返回
  static void pop(BuildContext context) {
    Application.getInstance().router.pop(context);
  }

  // 带参数的返回
  static void goBackWithParams(BuildContext context, result) {
    Navigator.pop(context, result);
  }

  // 去指定页面
  static void navigateTo(BuildContext context, String title,
      {Function function, bool repalce = false}) {
    Application.getInstance()
        .router
        .navigateTo(context, title,
            replace: repalce, transition: TransitionType.inFromRight)
        .then((value) => {
              (function == null)
                  ? LogManager.getInstance()
                      .prints(value, type: LogParamsKey.VERBOSE)
                  : function(value)
            });
  }

  //去首页闭关删除所有页面
  static void navigateToHomeRemoveAll(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => new HomePage()),
        (route) => route == null);
  }

  ///----------------------------------------------------分割线-----------------------------------------------------

  /// 使用 IOS 的 Cupertino 的转场动画，这个是修改了源码的 转场动画
  /// Fluro本身不带，但是 Flutter自带
  static Future gotransitionCupertinoDemoPage(
      BuildContext context, String title) {
    return Application.getInstance()
        .router
        .navigateTo(context, title, transition: TransitionType.cupertino);
  }

  /// 自定义 转场动画
  static Future gotransitionCustomDemoPage(BuildContext context, String title) {
    var transition = (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return new ScaleTransition(
          scale: animation,
          child: new RotationTransition(
            turns: animation,
            child: child,
          ));
    };
    return Application.getInstance().router.navigateTo(context, title,
        transition: TransitionType.custom,

        /// 指定是自定义动画
        transitionBuilder: transition,

        /// 自定义的动画
        transitionDuration: const Duration(milliseconds: 00));
  }
}
