import 'package:fezs_shopkeeper/consts/params_key.dart';
import 'package:fezs_shopkeeper/bean/js_images_bean.dart' as jsImages;
import 'package:fezs_shopkeeper/bean/js_location_bean.dart' as jsLocation;
import 'package:fezs_shopkeeper/bean/js_qrcode_bean.dart' as jsQrcode;
import 'dart:convert' as convert;

class JsSendManager {
  static final JsSendManager _singleton = JsSendManager._create();

  factory JsSendManager.getInstance() {
    return _singleton;
  }

  JsSendManager._create() {}

  /**
   * 3001 发送选择图片信息
   */
  void send3001(List<String> imgs, Function method) {
    Map<String, dynamic> map = Map<String, dynamic>();

    jsImages.JsImagesBean bean = jsImages.JsImagesBean();
    jsImages.Data data = jsImages.Data();
    data.imgs = imgs;
    data.token = "token";
    String jsonStr = convert.jsonEncode(bean);
    method(jsonStr);
  }

  /**
   * 3002 传递定位信息
   */
  void send3002(
      String latitude, String longitude, String location, Function method) {
    Map<String, dynamic> map = Map<String, dynamic>();
    map[JsCommunicationParamsKey.LATITUDE] = latitude;
    map[JsCommunicationParamsKey.LONGITUDE] = longitude;
    map[JsCommunicationParamsKey.LOCATION] = location;
    combinationBaseParams(map);

    jsLocation.JsLocationBean bean = jsLocation.JsLocationBean();
    jsLocation.Data data = jsLocation.Data.fromJson(map);
    bean.data = data;
    String jsonStr = convert.jsonEncode(bean);
    method(jsonStr);
  }

  /**
   * 3003 传递扫码信息
   */
  void send3003(String qrcode, Function method) {
    Map<String, dynamic> map = Map<String, dynamic>();
    map[JsCommunicationParamsKey.QRCODE] = qrcode;
    combinationBaseParams(map);

    jsQrcode.JsQrcodeBean bean = jsQrcode.JsQrcodeBean();
    jsQrcode.Data data = jsQrcode.Data.fromJson(map);
    bean.data = data;
    String jsonStr = convert.jsonEncode(bean);
    method(jsonStr);
  }

  /**
   * 基础数据
   */
  void combinationBaseParams(Map<String, dynamic> map) {
    map[JsCommunicationParamsKey.TOKEN] = "token";
  }
}
