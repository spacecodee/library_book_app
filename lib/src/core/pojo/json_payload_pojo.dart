import 'package:json_annotation/json_annotation.dart';

part 'json_payload_pojo.g.dart';

@JsonSerializable()
class JsonPayLoadDto {
  final String sub;
  final List<String> roles;
  final int iat;
  final int exp;

  JsonPayLoadDto(this.sub, this.roles, this.iat, this.exp);

  factory JsonPayLoadDto.fromJson(Map<String, dynamic> json) => _$JsonPayLoadDtoFromJson(json);

  Map<String, dynamic> toJson() => _$JsonPayLoadDtoToJson(this);
}
