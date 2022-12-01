// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_book_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowBookDto _$ShowBookDtoFromJson(Map<String, dynamic> json) => ShowBookDto(
      author: json['author'] as String? ?? '',
      categoryName: json['categoryName'] as String? ?? '',
      description: json['description'] as String? ?? '',
      globalRating: (json['globalRating'] as num?)?.toDouble() ?? 0,
      id: json['id'] as int? ?? 0,
      image: json['image'] as String? ?? '',
      name: json['name'] as String? ?? '',
      pages: json['pages'] as int? ?? 0,
      pdf: json['pdf'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ShowBookDtoToJson(ShowBookDto instance) =>
    <String, dynamic>{
      'author': instance.author,
      'categoryName': instance.categoryName,
      'description': instance.description,
      'globalRating': instance.globalRating,
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'pages': instance.pages,
      'pdf': instance.pdf,
      'rating': instance.rating,
    };
