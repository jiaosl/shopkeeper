import 'package:fezs_shopkeeper/consts/params_key.dart';
import 'package:flutter/material.dart';

/**
 * 正式release版本不打印日志
 */
class LogUtils {
  static final LogUtils _singleton = LogUtils._create();

  factory LogUtils.getInstance() {
    return _singleton;
  }

  LogUtils._create() {}

  void prints(Object object) {
    _prints(LogParamsKey.info, object);
  }

  void _prints(String tag, Object object) {
    //app运行为release版本的时候isProduction为true
    const bool isProduction = const bool.fromEnvironment("dart.vm.product");
    if (!isProduction) {
      print('$tag : $object');
    }
  }
}
