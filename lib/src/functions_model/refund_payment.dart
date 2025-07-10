import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'refund_payment.g.dart';

@JsonSerializable()
class RefundPaymentRequest extends Equatable {
  const RefundPaymentRequest({
    required this.idempotencyKey,
    required this.amountMoney,
    this.appFeeMoney,
    this.cashDetails,
    this.customerId,
    this.destinationId,
    this.externalDetails,
    this.locationId,
    this.paymentId,
    this.paymentVersionToken,
    this.reason,
    this.teamMemberId,
    this.unlinked,
  });

  factory RefundPaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$RefundPaymentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RefundPaymentRequestToJson(this);

  final String idempotencyKey;
  final Money amountMoney;
  final Money? appFeeMoney;
  final DestinationDetailsCashRefundDetails? cashDetails;
  final String? customerId;
  final String? destinationId;
  final DestinationDetailsExternalRefundDetails? externalDetails;
  final String? locationId;
  final String? paymentId;
  final String? paymentVersionToken;
  final String? reason;
  final String? teamMemberId;
  final bool? unlinked;

  @override
  List<Object?> get props => [
        idempotencyKey,
        amountMoney,
        appFeeMoney,
        cashDetails,
        customerId,
        destinationId,
        externalDetails,
        locationId,
        paymentId,
        paymentVersionToken,
        reason,
        teamMemberId,
        unlinked,
      ];
}

@JsonSerializable()
class RefundPaymentResponse extends SquareResponse {
  const RefundPaymentResponse({
    super.errors,
    this.refund,
  });

  factory RefundPaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$RefundPaymentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RefundPaymentResponseToJson(this);

  final PaymentRefund? refund;

  @override
  List<Object?> get props => [refund, errors];
}
