import 'package:fezs_shopkeeper/consts/params_key.dart';
import 'package:fezs_shopkeeper/pages/login_page.dart';
import 'package:fezs_shopkeeper/pages/picture_page.dart';
import 'package:fezs_shopkeeper/pages/video_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

//登陆
var loginHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    // String userId = params[RountesParamsKey.USER_ID]?.first;
    // int currentIndex = int.parse(indexStr);
    // bool isNumber = params['isNumber']?.first == 'true';
    return LoginPage();
  },
);

//图片
var pictureHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    // String userId = params[RountesParamsKey.USER_ID]?.first;
    // int currentIndex = int.parse(indexStr);
    // bool isNumber = params['isNumber']?.first == 'true';
    return PicturePage();
  },
);

//视频
var videoHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    // String userId = params[RountesParamsKey.USER_ID]?.first;
    // int currentIndex = int.parse(indexStr);
    // bool isNumber = params['isNumber']?.first == 'true';
    return VideoPage();
  },
);