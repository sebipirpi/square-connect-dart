// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_details_cash_refund_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationDetailsCashRefundDetails
    _$DestinationDetailsCashRefundDetailsFromJson(Map<String, dynamic> json) =>
        DestinationDetailsCashRefundDetails(
          sellerSuppliedMoney: Money.fromJson(
              json['seller_supplied_money'] as Map<String, dynamic>),
          chargeBackMoney: json['charge_back_money'] == null
              ? null
              : Money.fromJson(
                  json['charge_back_money'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$DestinationDetailsCashRefundDetailsToJson(
    DestinationDetailsCashRefundDetails instance) {
  final val = <String, dynamic>{
    'seller_supplied_money': instance.sellerSuppliedMoney.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('charge_back_money', instance.chargeBackMoney?.toJson());

  return val;
}
