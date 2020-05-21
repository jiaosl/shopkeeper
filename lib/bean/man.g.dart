// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'man.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Man _$ManFromJson(Map<String, dynamic> json) {
  return Man(
    name: json['name'] as String,
    age: json['age'] as int,
  );
}

Map<String, dynamic> _$ManToJson(Man instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
    };
