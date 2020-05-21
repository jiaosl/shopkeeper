import 'package:fezs_shopkeeper/consts/params_key.dart';

/**
 * 3001 : 传递图片信息
 */
class JsImagesBean {
  int type;
  Data data;

  JsImagesBean({this.type = 3001, this.data});

  JsImagesBean.fromJson(Map<String, dynamic> json) {
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
  List<String> imgs;

  Data({this.imgs});

  Data.fromJson(Map<String, dynamic> json) {
    token = json[JsCommunicationParamsKey.TOKEN];
    imgs = json[JsCommunicationParamsKey.IMGS].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[JsCommunicationParamsKey.TOKEN] = this.token;
    data[JsCommunicationParamsKey.IMGS] = this.imgs;
    return data;
  }
}
