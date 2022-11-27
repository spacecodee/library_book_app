import 'package:json_annotation/json_annotation.dart';

part 'http_response_api_dto.g.dart';

@JsonSerializable()
class HttpResponseApiDto {
  HttpResponseApiDto({
    required this.statusCode,
    required this.message,
    required this.data,
  });

  final int statusCode;
  final String message;
  final dynamic data;

  factory HttpResponseApiDto.fromJson(Map<String, dynamic> json) => _$HttpResponseApiDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HttpResponseApiDtoToJson(this);
}
