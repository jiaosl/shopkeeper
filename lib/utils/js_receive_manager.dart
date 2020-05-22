import 'dart:convert';

import 'package:fezs_shopkeeper/consts/params_key.dart';
import 'package:fezs_shopkeeper/utils/log_manager.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class JsReceiveManager {
  static final JsReceiveManager _singleton = JsReceiveManager._create();

  factory JsReceiveManager.getInstance() {
    return _singleton;
  }

  JsReceiveManager._create() {}

  /**
   * 收到消息
   */
  void receiveMsg(String jsonMsg, Function method) {
    Map<String, dynamic> map = json.decode(jsonMsg);

    if (!map.containsKey(JsCommunicationParamsKey.TYPE)) {
      LogManager.getInstance().prints("JsReceiveManager : 数据异常,无type字段");
      return;
    }
    if (!map.containsKey(JsCommunicationParamsKey.DATA)) {
      LogManager.getInstance().prints("JsReceiveManager : 数据异常,无data字段");
      return;
    }

    int type = map[JsCommunicationParamsKey.TYPE];
    Map<String, dynamic> data = map[JsCommunicationParamsKey.DATA];

    if (!data.containsKey(JsCommunicationParamsKey.TOKEN)) {
      LogManager.getInstance().prints("JsReceiveManager : 数据异常,无token字段");
      return;
    }
    if (!_checkData(data)) {
      LogManager.getInstance().prints("JsReceiveManager : token校验失败");
      return;
    }

    switch (type) {
      case 1001:
        _receive1001(type, data, method);
        break;
      case 1002:
        _receive1002(type, data, method);
        break;
      case 1003:
        _receive1003(type, data, method);
        break;
      case 1004:
        _receive1004(type, data, method);
        break;
      case 2001:
        _receive2001(type, data, method);
        break;
      case 2002:
        _receive2002(type, data, method);
        break;
      case 1001:
        _receive4001(type, data, method);
        break;
    }
  }

  /**
   * 1001 : 打开图片选择页面
   */
  void _receive1001(
      int type, Map<String, dynamic> data, Function method) async {
    List<Asset> resultList = List<Asset>();
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 9,
        enableCamera: true,
        selectedAssets: resultList,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "选择图片",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {}
    if (method != null) method(type, resultList);
  }

  /**
   * 1002 : 打开修改手机号页面
   */
  void _receive1002(int type, Map<String, dynamic> data, Function method) {}

  /**
   * 1003 : 打开新js链接页面
   */
  void _receive1003(int type, Map<String, dynamic> data, Function method) {}

  /**
   * 1004 : 打开扫码页面
   */
  void _receive1004(int type, Map<String, dynamic> data, Function method) {}

  /**
   * 2001 : 关闭页面
   */
  void _receive2001(int type, Map<String, dynamic> data, Function method) {}

  /**
   * 2002 : 关闭页面并刷新
   */
  void _receive2002(int type, Map<String, dynamic> data, Function method) {}

  /**
   * 4001 : 获取定位信息
   */
  void _receive4001(int type, Map<String, dynamic> data, Function method) {}

  /**
   * 校验数据
   */
  bool _checkData(Map<String, dynamic> data) {
    String token = data[JsCommunicationParamsKey.TOKEN];
    //todo : 校验 token

    return true;
  }
}
