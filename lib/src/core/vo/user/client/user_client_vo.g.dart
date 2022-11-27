// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_client_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserClientVo _$UserClientVoFromJson(Map<String, dynamic> json) => UserClientVo(
      email: json['email'] as String,
      id: json['id'] as int? ?? 0,
      password: json['password'] as String,
      peopleDto: PeopleDto.fromJson(json['peopleDto'] as Map<String, dynamic>),
      username: json['username'] as String,
    );

Map<String, dynamic> _$UserClientVoToJson(UserClientVo instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
      'password': instance.password,
      'peopleDto': instance.peopleDto,
      'username': instance.username,
    };
