// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingBookDto _$RatingBookDtoFromJson(Map<String, dynamic> json) =>
    RatingBookDto(
      ratingBook: (json['ratingBook'] as num?)?.toDouble(),
      bookId: json['bookId'] as int?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$RatingBookDtoToJson(RatingBookDto instance) =>
    <String, dynamic>{
      'ratingBook': instance.ratingBook,
      'bookId': instance.bookId,
      'username': instance.username,
    };
