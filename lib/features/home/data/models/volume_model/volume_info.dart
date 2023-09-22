import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'dimensions.dart';
import 'image_links.dart';
import 'industry_identifier.dart';

part 'volume_info.g.dart';

@JsonSerializable()
class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final int? pageCount;
  final Dimensions? dimensions;
  final String? printType;
  final String? mainCategory;
  final List<String>? categories;
  final double? averageRating;
  final int? ratingsCount;
  final String? contentVersion;
  final ImageLinks? imageLinks;
  final String? language;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.pageCount,
    this.dimensions,
    this.printType,
    this.mainCategory,
    this.categories,
    this.averageRating,
    this.ratingsCount,
    this.contentVersion,
    this.imageLinks,
    this.language,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> json) {
    return _$VolumeInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VolumeInfoToJson(this);

  VolumeInfo copyWith({
    String? title,
    List<String>? authors,
    String? publisher,
    String? publishedDate,
    String? description,
    List<IndustryIdentifier>? industryIdentifiers,
    int? pageCount,
    Dimensions? dimensions,
    String? printType,
    String? mainCategory,
    List<String>? categories,
    double? averageRating,
    int? ratingsCount,
    String? contentVersion,
    ImageLinks? imageLinks,
    String? language,
    String? infoLink,
    String? canonicalVolumeLink,
  }) {
    return VolumeInfo(
      title: title ?? this.title,
      authors: authors ?? this.authors,
      publisher: publisher ?? this.publisher,
      publishedDate: publishedDate ?? this.publishedDate,
      description: description ?? this.description,
      industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
      pageCount: pageCount ?? this.pageCount,
      dimensions: dimensions ?? this.dimensions,
      printType: printType ?? this.printType,
      mainCategory: mainCategory ?? this.mainCategory,
      categories: categories ?? this.categories,
      averageRating: averageRating ?? this.averageRating,
      ratingsCount: ratingsCount ?? this.ratingsCount,
      contentVersion: contentVersion ?? this.contentVersion,
      imageLinks: imageLinks ?? this.imageLinks,
      language: language ?? this.language,
      infoLink: infoLink ?? this.infoLink,
      canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      title,
      authors,
      publisher,
      publishedDate,
      description,
      industryIdentifiers,
      pageCount,
      dimensions,
      printType,
      mainCategory,
      categories,
      averageRating,
      ratingsCount,
      contentVersion,
      imageLinks,
      language,
      infoLink,
      canonicalVolumeLink,
    ];
  }
}
