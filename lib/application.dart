import 'package:dio/dio.dart';
import 'package:fezs_shopkeeper/api/dio_manager.dart';
import 'package:fezs_shopkeeper/event/event_bus.dart';
import 'package:fezs_shopkeeper/routes/routes.dart';
import 'package:fezs_shopkeeper/utils/shared_preferences_utils.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Application {
  Router router;
  EventBus eventBus;
  SpUtils sp;
  Dio dio;

  static final Application application = Application._create();

  factory Application.getInstance() {
    return application;
  }

  Application._create() {
    init();
  }

  init() async {
    _initSp();
    _initRouter();
    _initEventBus();
    _initStatusBarTransparent();
    _initDio();
  }

  _initSp() async {
    sp = await SpUtils.getInstance();
  }

  _initRouter() {
    var _router = Router();
    Routes.configureRoutes(_router);
    router = _router;
  }

  _initEventBus() {
    eventBus = new EventBus();
  }

  _initStatusBarTransparent() {
    // if (dt.Platform.isAndroid) {
    //   // 以下两行 设置android状态栏为透明的沉浸。写在组件渲染之后，是为了在渲染后进行set赋值，覆盖状态栏，写在渲染之前MaterialApp组件会覆盖掉这个值。
    //   SystemUiOverlayStyle systemUiOverlayStyle =
    //       SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    //   SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    // }
  }

  _initDio() {
    dio = DioManager().dio;
    dio.interceptors.add(LogInterceptor(responseBody: true)); //开启请求日志
  }

  void initScreen(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
  }
}
