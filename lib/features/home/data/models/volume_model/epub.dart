import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'epub.g.dart';

@JsonSerializable()
class Epub extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const Epub({this.isAvailable, this.acsTokenLink});

  factory Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);

  Map<String, dynamic> toJson() => _$EpubToJson(this);

  Epub copyWith({
    bool? isAvailable,
    String? acsTokenLink,
  }) {
    return Epub(
      isAvailable: isAvailable ?? this.isAvailable,
      acsTokenLink: acsTokenLink ?? this.acsTokenLink,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}
