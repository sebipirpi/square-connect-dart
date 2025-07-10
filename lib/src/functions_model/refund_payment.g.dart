// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefundPaymentRequest _$RefundPaymentRequestFromJson(
        Map<String, dynamic> json) =>
    RefundPaymentRequest(
      idempotencyKey: json['idempotency_key'] as String,
      amountMoney: Money.fromJson(json['amount_money'] as Map<String, dynamic>),
      appFeeMoney: json['app_fee_money'] == null
          ? null
          : Money.fromJson(json['app_fee_money'] as Map<String, dynamic>),
      cashDetails: json['cash_details'] == null
          ? null
          : DestinationDetailsCashRefundDetails.fromJson(
              json['cash_details'] as Map<String, dynamic>),
      customerId: json['customer_id'] as String?,
      destinationId: json['destination_id'] as String?,
      externalDetails: json['external_details'] == null
          ? null
          : DestinationDetailsExternalRefundDetails.fromJson(
              json['external_details'] as Map<String, dynamic>),
      locationId: json['location_id'] as String?,
      paymentId: json['payment_id'] as String?,
      paymentVersionToken: json['payment_version_token'] as String?,
      reason: json['reason'] as String?,
      teamMemberId: json['team_member_id'] as String?,
      unlinked: json['unlinked'] as bool?,
    );

Map<String, dynamic> _$RefundPaymentRequestToJson(
    RefundPaymentRequest instance) {
  final val = <String, dynamic>{
    'idempotency_key': instance.idempotencyKey,
    'amount_money': instance.amountMoney.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('app_fee_money', instance.appFeeMoney?.toJson());
  writeNotNull('cash_details', instance.cashDetails?.toJson());
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('destination_id', instance.destinationId);
  writeNotNull('external_details', instance.externalDetails?.toJson());
  writeNotNull('location_id', instance.locationId);
  writeNotNull('payment_id', instance.paymentId);
  writeNotNull('payment_version_token', instance.paymentVersionToken);
  writeNotNull('reason', instance.reason);
  writeNotNull('team_member_id', instance.teamMemberId);
  writeNotNull('unlinked', instance.unlinked);

  return val;
}

RefundPaymentResponse _$RefundPaymentResponseFromJson(
        Map<String, dynamic> json) =>
    RefundPaymentResponse(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
      refund: json['refund'] == null
          ? null
          : PaymentRefund.fromJson(json['refund'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RefundPaymentResponseToJson(
    RefundPaymentResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('refund', instance.refund?.toJson());

  return val;
}
