import 'package:fezs_shopkeeper/consts/params_key.dart';

/**
 * 3003 : 传递扫码信息
 */
class JsQrcodeBean {
  int type;
  Data data;

  JsQrcodeBean({this.type = 3003, this.data});

  JsQrcodeBean.fromJson(Map<String, dynamic> json) {
    type = json[JsCommunicationParamsKey.TYPE];
    data = json[JsCommunicationParamsKey.DATA] != null
        ? new Data.fromJson(json[JsCommunicationParamsKey.DATA])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[JsCommunicationParamsKey.TYPE] = this.type;
    if (this.data != null) {
      data[JsCommunicationParamsKey.DATA] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  String token;
  String qrcode;

  Data({this.qrcode});

  Data.fromJson(Map<String, dynamic> json) {
    qrcode = json[JsCommunicationParamsKey.QRCODE];
    token = json[JsCommunicationParamsKey.TOKEN];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[JsCommunicationParamsKey.TOKEN] = this.token;
    data[JsCommunicationParamsKey.QRCODE] = this.qrcode;
    return data;
  }
}
