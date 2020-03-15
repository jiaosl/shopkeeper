import 'package:fluro/fluro.dart';

import './route_handlers.dart';

class Routes {
  static String root = '/';
  static String login = '/login'; //登录页面
  static String picture = '/picture'; //图片页面
  static String video = '/video'; //视频页面

  static configureRoutes(Router router) {
    router.define(
      login,
      handler: loginHandler,
      // transitionType: TransitionType.inFromRight,
    );
    router.define(
      picture,
      handler: pictureHandler,
      // transitionType: TransitionType.inFromRight,
    );
    router.define(
      video,
      handler: videoHandler,
      // transitionType: TransitionType.inFromRight,
    );
  }
}
