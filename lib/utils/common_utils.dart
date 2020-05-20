import 'package:fezs_shopkeeper/redux/app.dart';

class CommonUtils {
  /**
   * 清理数据缓存
   */
  static clearData() {
    store?.state?.clearState();
  }
}
