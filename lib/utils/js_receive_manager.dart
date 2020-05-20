import 'package:fezs_shopkeeper/utils/navigator_utils.dart';

class JsReceiveManager {
  static final JsReceiveManager _singleton = JsReceiveManager._create();

  factory JsReceiveManager.getInstance() {
    return _singleton;
  }

  JsReceiveManager._create() {}

  /**
   * 1001 : 打开图片选择页面
   */
  void receive1001() {}

  /**
   * 1002 : 打开修改手机号页面
   */
  void receive1002() {}

  /**
   * 1003 : 打开新js链接页面
   */
  void receive1003() {}

  /**
   * 1004 : 打开扫码页面
   */
  void receive1004() {}

  /**
   * 2001 : 关闭页面
   */
  void receive2001() {}

  /**
   * 2002 : 关闭页面并刷新
   */
  void receive2002() {}

  /**
   * 4001 : 获取定位信息
   */
  void receive4001() {}

  /**
   * 校验数据
   */
  void checkData() {}
}
