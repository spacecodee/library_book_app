// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_global_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserGlobalAccount _$UserGlobalAccountFromJson(Map<String, dynamic> json) =>
    UserGlobalAccount(
      address: json['address'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$UserGlobalAccountToJson(UserGlobalAccount instance) =>
    <String, dynamic>{
      'address': instance.address,
      'email': instance.email,
      'name': instance.name,
      'surname': instance.surname,
      'username': instance.username,
    };
