class RountesParamsKey {
  static const String USER_ID = "userId";
}

class SpParamsKey {
  static const String USER_ID = "userId";
}

class LogParamsKey {
  static const String error = "error";
  static const String debug = "debug";
  static const String info = "info";
  static const String warm = "warm";
}

class NWApi {
  static final baseApi = "https://easy-mock.bookset.io/mock/5dfae67d4946c20a50841fa7/example/";
  static final loginPath = "user/login";//接口返回：{"code": int, "message": "String", "data": {"account": "String", "password": "String"}}
  static final queryListPath = "/query/list";//接口返回：{"code": ing, "message": "String", "data": [int, int, String, int, String, int]}
  static final queryListJsonPath = "/query/listjson";//接口返回：{"code": int, "message": "String", "data": [{"account": "String", "password": "String"}， {"account": "String", "password": "String"}]}
}