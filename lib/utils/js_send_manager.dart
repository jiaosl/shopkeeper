class JsSendManager {
  static final JsSendManager _singleton = JsSendManager._create();

  factory JsSendManager.getInstance() {
    return _singleton;
  }

  JsSendManager._create() {}

  /**
   * 3001 发送选择图片信息
   */
  void send3001() {
    Map<String, dynamic> jsonBean = Map<String, dynamic>();
    combinationBaseParams(jsonBean);
  }

  /**
   * 3002 传递定位信息
   */
  void send3002() {
    Map<String, dynamic> jsonBean = Map<String, dynamic>();
    combinationBaseParams(jsonBean);
  }

  /**
   * 3003 传递扫码信息
   */
  void send3003() {
    Map<String, dynamic> jsonBean = Map<String, dynamic>();
    combinationBaseParams(jsonBean);
  }

  /**
   * 基础数据
   */
  void combinationBaseParams(Map<String, dynamic> json) {}
}
