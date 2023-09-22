import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'industry_identifier.g.dart';

@JsonSerializable()
class IndustryIdentifier extends Equatable {
  final String? type;
  final String? identifier;

  const IndustryIdentifier({this.type, this.identifier});

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) {
    return _$IndustryIdentifierFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IndustryIdentifierToJson(this);

  IndustryIdentifier copyWith({
    String? type,
    String? identifier,
  }) {
    return IndustryIdentifier(
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [type, identifier];
}
