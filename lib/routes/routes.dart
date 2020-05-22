import 'package:fluro/fluro.dart';

import './route_handlers.dart';

class Routes {
  static String root = '/';
  static String login = '/login'; //登录页面
  static String picture = '/picture'; //图片页面
  static String video = '/video'; //视频页面
  static String changePhomeNumber = '/changePhomeNumber'; //修改手机号页面

  /**
   * tab栏目
   */
  static String customerManagement = '/customer_management'; //客户管理
  static String personalCenter = '/personal_center'; //个人中心
  static String performanceStatistics = '/performance_statistics'; //业绩统计
  static String knowledgeBase = '/knowledge_base'; //知识库

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
    router.define(
      changePhomeNumber,
      handler: changePhomeNumberHandler,
      // transitionType: TransitionType.inFromRight,
    );
  }
}
