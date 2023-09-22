import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'book.dart';

part 'volume_model.g.dart';

@JsonSerializable()
class VolumeModel extends Equatable {
  final String? kind;
  final int? totalItems;
  final List<Book>? items;

  const VolumeModel({this.kind, this.totalItems, this.items});

  factory VolumeModel.fromJson(Map<String, dynamic> json) {
    return _$VolumeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VolumeModelToJson(this);

  VolumeModel copyWith({
    String? kind,
    int? totalItems,
    List<Book>? items,
  }) {
    return VolumeModel(
      kind: kind ?? this.kind,
      totalItems: totalItems ?? this.totalItems,
      items: items ?? this.items,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [kind, totalItems, items];
}
