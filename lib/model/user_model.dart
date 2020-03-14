import 'dart:async';
import 'dart:developer';

import 'package:fezs_shopkeeper/bean/user.dart';
import 'package:fezs_shopkeeper/redux/app.dart';
import 'package:fezs_shopkeeper/redux/reducer/common_reducer.dart';

class UserModel {
  var user = User();

  var _subject = StreamController<User>.broadcast();
  Sink<User> get inData => _subject.sink;
  Stream<User> get outData => _subject.stream
    ..listen((data) {
      user = data;
    });

  void dispose() {
    _subject.close();
  }

  void addAge() {
    if (user == null) {
      user = User();
    }
    user.age = user.age + 1;
    inData.add(user);

    //存储在store里面
    store.dispatch(UserUpdate(user: user));
  }
}
