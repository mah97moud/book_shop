import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'epub.dart';
import 'pdf.dart';

part 'access_info.g.dart';

@JsonSerializable()
class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? accessViewStatus;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.accessViewStatus,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> json) {
    return _$AccessInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AccessInfoToJson(this);

  AccessInfo copyWith({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Pdf? pdf,
    String? accessViewStatus,
  }) {
    return AccessInfo(
      country: country ?? this.country,
      viewability: viewability ?? this.viewability,
      embeddable: embeddable ?? this.embeddable,
      publicDomain: publicDomain ?? this.publicDomain,
      textToSpeechPermission:
          textToSpeechPermission ?? this.textToSpeechPermission,
      epub: epub ?? this.epub,
      pdf: pdf ?? this.pdf,
      accessViewStatus: accessViewStatus ?? this.accessViewStatus,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      epub,
      pdf,
      accessViewStatus,
    ];
  }
}
