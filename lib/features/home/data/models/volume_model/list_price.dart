import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_price.g.dart';

@JsonSerializable()
class ListPrice extends Equatable {
  final double? amount;
  final String? currencyCode;

  const ListPrice({this.amount, this.currencyCode});

  factory ListPrice.fromJson(Map<String, dynamic> json) {
    return _$ListPriceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ListPriceToJson(this);

  ListPrice copyWith({
    double? amount,
    String? currencyCode,
  }) {
    return ListPrice(
      amount: amount ?? this.amount,
      currencyCode: currencyCode ?? this.currencyCode,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [amount, currencyCode];
}
