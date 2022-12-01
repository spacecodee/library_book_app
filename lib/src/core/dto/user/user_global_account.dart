import 'package:json_annotation/json_annotation.dart';

part 'user_global_account.g.dart';

@JsonSerializable()
class UserGlobalAccount {
  UserGlobalAccount({
    required this.address,
    required this.email,
    required this.name,
    required this.surname,
    required this.username,
  });

  final String address;
  final String email;
  final String name;
  final String surname;
  final String username;

  factory UserGlobalAccount.fromJson(Map<String, dynamic> json) => _$UserGlobalAccountFromJson(json);

  Map<String, dynamic> toJson() => _$UserGlobalAccountToJson(this);
}
