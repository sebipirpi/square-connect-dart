import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'destination_details_cash_refund_details.g.dart';

@JsonSerializable()
class DestinationDetailsCashRefundDetails extends Equatable {
  const DestinationDetailsCashRefundDetails({
    required this.sellerSuppliedMoney,
    this.chargeBackMoney,
  });

  factory DestinationDetailsCashRefundDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DestinationDetailsCashRefundDetailsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DestinationDetailsCashRefundDetailsToJson(this);

  final Money sellerSuppliedMoney;
  final Money? chargeBackMoney;

  @override
  List<Object?> get props => [sellerSuppliedMoney, chargeBackMoney];
}
