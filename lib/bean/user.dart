import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  String name;

  @JsonKey(nullable: false)
  int age = 0;

  User({this.name, this.age});

  // 反序列化
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
