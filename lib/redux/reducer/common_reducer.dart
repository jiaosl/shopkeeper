import 'package:fezs_shopkeeper/bean/user.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';

//--------------------------------------user:-------------------------------------
final userReducer = combineReducers<User>([
  TypedReducer<User, UserUpdate>(_updaterApp),
]);

User _updaterApp(User state, UserUpdate action) {
  state = action.user;
  return state;
}

class UserUpdate {
  User user;
  UserUpdate({
    @required this.user,
  });
}

//--------------------------------------selectedUserList:-------------------------------------
final selectedUserListReducer = combineReducers<List<User>>([
  TypedReducer<List<User>, SelectedUserListUpdate>(_updateSelectedUserList),
]);

List<User> _updateSelectedUserList(
    List<User> state, SelectedUserListUpdate action) {
  state = action.selectedUserList ?? List<User>();
  return state;
}

class SelectedUserListUpdate {
  List<User> selectedUserList;
  SelectedUserListUpdate({
    this.selectedUserList,
  });
}
