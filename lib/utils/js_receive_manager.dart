import 'dart:convert';

import 'package:fezs_shopkeeper/utils/log_manager.dart';

class JsReceiveManager {
  static final JsReceiveManager _singleton = JsReceiveManager._create();

  factory JsReceiveManager.getInstance() {
    return _singleton;
  }

  JsReceiveManager._create() {}

  /**
   * 收到消息
   */
  void receiveMsg(String jsonMsg) {
    Map<String, dynamic> map = json.decode(jsonMsg);

    if (!map.containsKey('type')) {
      LogManager.getInstance().prints("JsReceiveManager : 数据异常,无type字段");
    }
    if (!map.containsKey('data')) {
      LogManager.getInstance().prints("JsReceiveManager : 数据异常,无data字段");
    }

    int type = map['type'];
    Map<String, dynamic> data = map['data'];

    if (!checkData(data)) {
      LogManager.getInstance().prints("JsReceiveManager : token校验失败");
    }

    switch (type) {
      case 1001:
        receive1001(data);
        break;
      case 1002:
        receive1002(data);
        break;
      case 1003:
        receive1003(data);
        break;
      case 1004:
        receive1004(data);
        break;
      case 2001:
        receive2001(data);
        break;
      case 2002:
        receive2002(data);
        break;
      case 1001:
        receive4001(data);
        break;
    }
  }

  /**
   * 1001 : 打开图片选择页面
   */
  void receive1001(Map<String, dynamic> data) {}

  /**
   * 1002 : 打开修改手机号页面
   */
  void receive1002(Map<String, dynamic> data) {}

  /**
   * 1003 : 打开新js链接页面
   */
  void receive1003(Map<String, dynamic> data) {}

  /**
   * 1004 : 打开扫码页面
   */
  void receive1004(Map<String, dynamic> data) {}

  /**
   * 2001 : 关闭页面
   */
  void receive2001(Map<String, dynamic> data) {}

  /**
   * 2002 : 关闭页面并刷新
   */
  void receive2002(Map<String, dynamic> data) {}

  /**
   * 4001 : 获取定位信息
   */
  void receive4001(Map<String, dynamic> data) {}

  /**
   * 校验数据
   */
  bool checkData(Map<String, dynamic> data) {
    return true;
  }
}
