import 'package:json_annotation/json_annotation.dart';

part 'jwt_dto.g.dart';

@JsonSerializable()
class JwtDto {
  JwtDto({
    this.token = '',
  });

  final String token;

  factory JwtDto.fromJson(Map<String, dynamic> json) => _$JwtDtoFromJson(json);

  Map<String, dynamic> toJson() => _$JwtDtoToJson(this);
}
