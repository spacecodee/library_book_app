// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PeopleDto _$PeopleDtoFromJson(Map<String, dynamic> json) => PeopleDto(
      address: json['address'] as String? ?? '',
      id: json['id'] as int? ?? 0,
      name: json['name'] as String,
      phone: json['phone'] as int? ?? 0,
      surname: json['surname'] as String,
    );

Map<String, dynamic> _$PeopleDtoToJson(PeopleDto instance) => <String, dynamic>{
      'address': instance.address,
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'surname': instance.surname,
    };
