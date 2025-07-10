import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'destination_details_external_refund_details.g.dart';

@JsonSerializable()
class DestinationDetailsExternalRefundDetails extends Equatable {
  const DestinationDetailsExternalRefundDetails({
    required this.type,
    required this.source,
    this.sourceId,
  });

  factory DestinationDetailsExternalRefundDetails.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DestinationDetailsExternalRefundDetailsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DestinationDetailsExternalRefundDetailsToJson(this);

  final DestinationDetailsExternalRefundDetailsType type;
  final String source;
  final String? sourceId;

  @override
  List<Object?> get props => [type, source, sourceId];
}

enum DestinationDetailsExternalRefundDetailsType {
  @JsonValue('CHECK')
  check,
  @JsonValue('BANK_TRANSFER')
  bankTransfer,
  @JsonValue('OTHER_GIFT_CARD')
  otherGiftCard,
  @JsonValue('CRYPTO')
  crypto,
  @JsonValue('SQUARE_CASH')
  squareCash,
  @JsonValue('SOCIAL')
  social,
  @JsonValue('EXTERNAL')
  external,
  @JsonValue('EMONEY')
  emoney,
  @JsonValue('CARD')
  card,
  @JsonValue('STORED_BALANCE')
  storedBalance,
  @JsonValue('FOOD_VOUCHER')
  foodVoucher,
  @JsonValue('OTHER')
  other,
}
