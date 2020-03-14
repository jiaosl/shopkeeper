import 'package:fezs_shopkeeper/redux/app.dart';

class CommonUtils {
  /**
   * 清理数据缓存
   */
  clearData() {
    store?.state?.clearState();
  }
}
