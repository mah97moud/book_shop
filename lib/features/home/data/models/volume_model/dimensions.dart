import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dimensions.g.dart';

@JsonSerializable()
class Dimensions extends Equatable {
  final String? height;
  final String? width;
  final String? thickness;

  const Dimensions({this.height, this.width, this.thickness});

  factory Dimensions.fromJson(Map<String, dynamic> json) {
    return _$DimensionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DimensionsToJson(this);

  Dimensions copyWith({
    String? height,
    String? width,
    String? thickness,
  }) {
    return Dimensions(
      height: height ?? this.height,
      width: width ?? this.width,
      thickness: thickness ?? this.thickness,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [height, width, thickness];
}
