import 'package:json_annotation/json_annotation.dart';

/// Indicates the type of CatalogItem. Can only create `regular`
/// and `appointmentsService`.
enum CatalogItemProductType {
  @JsonValue('REGULAR')
  regular,
  @JsonValue('GIFT_CARD')
  giftCard,
  @JsonValue('APPOINTMENTS_SERVICE')
  appointmentsService,
  @JsonValue('RETAIL_ITEM')
  retailItem,
  @JsonValue('RESTAURANT_ITEM')
  restaurantItem,
  @JsonValue('DIGITAL')
  digital,
  @JsonValue('DONATION')
  donation,
  @JsonValue('EVENT')
  event,
  @JsonValue('FOOD_AND_BEV')
  foodAndBev,
  @JsonValue('LEGACY_SQUARE_ONLINE_SERVICE')
  legacySquareOnlineService,
  @JsonValue('LEGACY_SQUARE_ONLINE_MEMBERSHIP')
  legacySquareOnlineMembership,
}
