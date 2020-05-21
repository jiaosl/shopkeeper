class RountesParamsKey {
  static const String USER_ID = "userId";
}

class SpParamsKey {
  static const String USER_ID = "userId";
}

class LogParamsKey {
  static const String ERROR = "error";
  static const String DEBUG = "debug";
  static const String INFO = "info";
  static const String WARM = "warm";
}

class ApiParamsKey {
  static final baseApi = "https://easy-mock.bookset.io/mock/5dfae67d4946c20a50841fa7/example/";
  static final loginPath = "user/login";//接口返回：{"code": int, "message": "String", "data": {"account": "String", "password": "String"}}
  static final queryListPath = "/query/list";//接口返回：{"code": ing, "message": "String", "data": [int, int, String, int, String, int]}
  static final queryListJsonPath = "/query/listjson";//接口返回：{"code": int, "message": "String", "data": [{"account": "String", "password": "String"}， {"account": "String", "password": "String"}]}
}

class JsCommunicationParamsKey{
  static const String TYPE = "type";
  static const String DATA = "data";
  static const String TOKEN = "token";
  static const String LATITUDE = "latitude";
  static const String LONGITUDE = "longitude";
  static const String LOCATION = "location";
  static const String QRCODE = "qrcode";
  static const String IMGS = "imgs";
}