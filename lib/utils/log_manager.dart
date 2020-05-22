import 'package:fezs_shopkeeper/consts/params_key.dart';
import 'package:flutter/material.dart';

/**
 * 正式release版本不打印日志
 */
class LogManager {
  static final LogManager _singleton = LogManager._create();

  factory LogManager.getInstance() {
    return _singleton;
  }

  LogManager._create() {}

  void prints(Object object, {String type = LogParamsKey.INFO}) {
    //app运行为release版本的时候isProduction为true
    const bool isProduction = const bool.fromEnvironment("dart.vm.product");
    if (!isProduction) {
      print('$type : $object');
    }
  }
}
