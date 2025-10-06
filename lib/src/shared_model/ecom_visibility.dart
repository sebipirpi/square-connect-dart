import 'package:json_annotation/json_annotation.dart';

/// Determines item visibility in Ecom (Online Store) and Online Checkout
enum EcomVisibility {
  @JsonValue('UNINDEXED')
  unindexed,
  @JsonValue('UNAVAILABLE')
  unavailable,
  @JsonValue('HIDDEN')
  hidden,
  @JsonValue('VISIBLE')
  visible,
}
