import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'image_links.g.dart';

@JsonSerializable()
class ImageLinks extends Equatable {
  final String? smallThumbnail;
  final String? thumbnail;
  final String? small;
  final String? medium;
  final String? large;
  final String? extraLarge;

  const ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
    this.small,
    this.medium,
    this.large,
    this.extraLarge,
  });

  factory ImageLinks.fromJson(Map<String, dynamic> json) {
    return _$ImageLinksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ImageLinksToJson(this);

  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
    String? small,
    String? medium,
    String? large,
    String? extraLarge,
  }) {
    return ImageLinks(
      smallThumbnail: smallThumbnail ?? this.smallThumbnail,
      thumbnail: thumbnail ?? this.thumbnail,
      small: small ?? this.small,
      medium: medium ?? this.medium,
      large: large ?? this.large,
      extraLarge: extraLarge ?? this.extraLarge,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      smallThumbnail,
      thumbnail,
      small,
      medium,
      large,
      extraLarge,
    ];
  }
}
