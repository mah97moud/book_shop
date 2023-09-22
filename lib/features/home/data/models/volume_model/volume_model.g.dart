// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VolumeModel _$VolumeModelFromJson(Map<String, dynamic> json) => VolumeModel(
      kind: json['kind'] as String?,
      totalItems: json['totalItems'] as int?,
      books: (json['books'] as List<dynamic>?)
          ?.map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VolumeModelToJson(VolumeModel instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'totalItems': instance.totalItems,
      'books': instance.books,
    };
