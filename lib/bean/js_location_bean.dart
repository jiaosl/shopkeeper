import 'package:fezs_shopkeeper/consts/params_key.dart';

/**
 * 3002 : 传递定位信息
 */
class JsLocationBean {
  int type;
  Data data;

  JsLocationBean({this.type = 3002, this.data});

  JsLocationBean.fromJson(Map<String, dynamic> json) {
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
  String latitude;
  String longitude;
  String location;

  Data({this.latitude, this.longitude, this.location});

  Data.fromJson(Map<String, dynamic> json) {
    latitude = json[JsCommunicationParamsKey.LATITUDE];
    longitude = json[JsCommunicationParamsKey.LONGITUDE];
    location = json[JsCommunicationParamsKey.LOCATION];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data[JsCommunicationParamsKey.LATITUDE] = this.latitude;
    data[JsCommunicationParamsKey.LONGITUDE] = this.longitude;
    data[JsCommunicationParamsKey.LOCATION] = this.location;
    return data;
  }
}
