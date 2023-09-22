import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'list_price.dart';
import 'retail_price.dart';

part 'sale_info.g.dart';

@JsonSerializable()
class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;
  final String? buyLink;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
  });

  factory SaleInfo.fromJson(Map<String, dynamic> json) {
    return _$SaleInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SaleInfoToJson(this);

  SaleInfo copyWith({
    String? country,
    String? saleability,
    bool? isEbook,
    ListPrice? listPrice,
    RetailPrice? retailPrice,
    String? buyLink,
  }) {
    return SaleInfo(
      country: country ?? this.country,
      saleability: saleability ?? this.saleability,
      isEbook: isEbook ?? this.isEbook,
      listPrice: listPrice ?? this.listPrice,
      retailPrice: retailPrice ?? this.retailPrice,
      buyLink: buyLink ?? this.buyLink,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      country,
      saleability,
      isEbook,
      listPrice,
      retailPrice,
      buyLink,
    ];
  }
}
