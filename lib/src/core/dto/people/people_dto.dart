import 'package:json_annotation/json_annotation.dart';

part 'people_dto.g.dart';

@JsonSerializable()
class PeopleDto {
  PeopleDto({
    this.address = '',
    this.id = 0,
    required this.name,
    this.phone = 0,
    required this.surname,
  });

  final String address;
  final int id;
  final String name;
  final int phone;
  final String surname;

  factory PeopleDto.fromJson(Map<String, dynamic> json) => _$PeopleDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PeopleDtoToJson(this);
}
