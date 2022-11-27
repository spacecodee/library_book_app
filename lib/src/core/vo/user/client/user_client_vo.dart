import 'package:json_annotation/json_annotation.dart';
import 'package:library_book_app/src/core/dto/people/people_dto.dart';

part 'user_client_vo.g.dart';

@JsonSerializable()
class UserClientVo {
  UserClientVo({
    required this.email,
    this.id = 0,
    required this.password,
    required this.peopleDto,
    required this.username,
  });

  final String email;
  final int id;
  final String password;
  final PeopleDto peopleDto;
  final String username;

  factory UserClientVo.fromJson(Map<String, dynamic> json) => _$UserClientVoFromJson(json);

  Map<String, dynamic> toJson() => _$UserClientVoToJson(this);
}
