import 'package:fluro/fluro.dart';

import './route_handlers.dart';

class Routes {
  static String root = '/';
  static String login = '/login'; //登录页面

  static configureRoutes(Router router) {
    // router.define(
    //   login,
    //   handler: loginHandler,
    //   transitionType: TransitionType.inFromRight,
    // );
    // router.define(
    //   index,
    //   handler: indexPageHandler,
    //   transitionType: TransitionType.inFromRight,
    // );
  }
}
