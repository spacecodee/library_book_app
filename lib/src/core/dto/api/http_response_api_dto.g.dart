// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_response_api_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HttpResponseApiDto _$HttpResponseApiDtoFromJson(Map<String, dynamic> json) =>
    HttpResponseApiDto(
      statusCode: json['statusCode'] as int,
      message: json['message'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$HttpResponseApiDtoToJson(HttpResponseApiDto instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
