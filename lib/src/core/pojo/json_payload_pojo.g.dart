// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_payload_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonPayLoadDto _$JsonPayLoadDtoFromJson(Map<String, dynamic> json) =>
    JsonPayLoadDto(
      json['sub'] as String,
      (json['roles'] as List<dynamic>).map((e) => e as String).toList(),
      json['iat'] as int,
      json['exp'] as int,
    );

Map<String, dynamic> _$JsonPayLoadDtoToJson(JsonPayLoadDto instance) =>
    <String, dynamic>{
      'sub': instance.sub,
      'roles': instance.roles,
      'iat': instance.iat,
      'exp': instance.exp,
    };
