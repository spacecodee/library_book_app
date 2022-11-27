// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_promedio_book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingPromedioBookDto _$RatingPromedioBookDtoFromJson(
        Map<String, dynamic> json) =>
    RatingPromedioBookDto(
      promedioRating: (json['promedioRating'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RatingPromedioBookDtoToJson(
        RatingPromedioBookDto instance) =>
    <String, dynamic>{
      'promedioRating': instance.promedioRating,
      'rating': instance.rating,
    };
