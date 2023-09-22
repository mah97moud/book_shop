import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pdf.g.dart';

@JsonSerializable()
class Pdf extends Equatable {
  final bool? isAvailable;

  const Pdf({this.isAvailable});

  factory Pdf.fromJson(Map<String, dynamic> json) => _$PdfFromJson(json);

  Map<String, dynamic> toJson() => _$PdfToJson(this);

  Pdf copyWith({
    bool? isAvailable,
  }) {
    return Pdf(
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [isAvailable];
}
