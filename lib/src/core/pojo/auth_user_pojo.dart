import 'package:json_annotation/json_annotation.dart';

part 'auth_user_pojo.g.dart';

@JsonSerializable()
class AuthUserPojo {
  AuthUserPojo({
    required this.password,
    required this.username,
  });

  final String password;
  final String username;

  factory AuthUserPojo.fromJson(Map<String, dynamic> json) => _$AuthUserPojoFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserPojoToJson(this);
}
