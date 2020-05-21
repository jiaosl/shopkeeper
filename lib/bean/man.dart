import 'package:json_annotation/json_annotation.dart';
part 'man.g.dart';


@JsonSerializable()
class Man {
  String name;
  int age = 0;

  Man({this.name, this.age});


  // 反序列化
  factory Man.fromJson(Map<String, dynamic> json) => _$ManFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$ManToJson(this);
}
