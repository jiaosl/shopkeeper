import 'package:fezs_shopkeeper/redux/reducer/common_reducer.dart';
import 'package:redux/redux.dart';
import 'package:fezs_shopkeeper/bean/user.dart';

class AppState {
  User user;
  List<User> selectedTagList;

  AppState({
    this.user,
    this.selectedTagList,
  });

  //清理缓存
  clearState() {
    this.user = null;
    selectedTagList.clear();

    //为了自动切换页面,更新数据
    store.dispatch(UserUpdate(user: null));
  }
}

AppState appStateReducer(AppState state, action) {
  return AppState(
    user: userReducer(state.user, action),
    selectedTagList: selectedUserListReducer(state.selectedTagList, action),
  );
}

final store = new Store<AppState>(
  appStateReducer,
  initialState: new AppState(
    user: User(),
    selectedTagList: [],
  ),
);
