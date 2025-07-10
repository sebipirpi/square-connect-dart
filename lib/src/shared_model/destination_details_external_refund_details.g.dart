// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination_details_external_refund_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinationDetailsExternalRefundDetails
    _$DestinationDetailsExternalRefundDetailsFromJson(
            Map<String, dynamic> json) =>
        DestinationDetailsExternalRefundDetails(
          type: $enumDecode(
              _$DestinationDetailsExternalRefundDetailsTypeEnumMap,
              json['type']),
          source: json['source'] as String,
          sourceId: json['source_id'] as String?,
        );

Map<String, dynamic> _$DestinationDetailsExternalRefundDetailsToJson(
        DestinationDetailsExternalRefundDetails instance) {
  final val = <String, dynamic>{
    'type':
        _$DestinationDetailsExternalRefundDetailsTypeEnumMap[instance.type]!,
    'source': instance.source,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source_id', instance.sourceId);
  
  return val;
}

const _$DestinationDetailsExternalRefundDetailsTypeEnumMap = {
  DestinationDetailsExternalRefundDetailsType.check: 'CHECK',
  DestinationDetailsExternalRefundDetailsType.bankTransfer: 'BANK_TRANSFER',
  DestinationDetailsExternalRefundDetailsType.otherGiftCard: 'OTHER_GIFT_CARD',
  DestinationDetailsExternalRefundDetailsType.crypto: 'CRYPTO',
  DestinationDetailsExternalRefundDetailsType.squareCash: 'SQUARE_CASH',
  DestinationDetailsExternalRefundDetailsType.social: 'SOCIAL',
  DestinationDetailsExternalRefundDetailsType.external: 'EXTERNAL',
  DestinationDetailsExternalRefundDetailsType.emoney: 'EMONEY',
  DestinationDetailsExternalRefundDetailsType.card: 'CARD',
  DestinationDetailsExternalRefundDetailsType.storedBalance: 'STORED_BALANCE',
  DestinationDetailsExternalRefundDetailsType.foodVoucher: 'FOOD_VOUCHER',
  DestinationDetailsExternalRefundDetailsType.other: 'OTHER',
};
