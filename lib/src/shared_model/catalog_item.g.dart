// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogItem _$CatalogItemFromJson(Map<String, dynamic> json) => CatalogItem(
      name: json['name'] as String,
      description: json['description'] as String?,
      abbreviation: json['abbreviation'] as String?,
      labelColor: json['label_color'] as String?,
      availableOnline: json['available_online'] as bool?,
      availableForPickup: json['available_for_pickup'] as bool?,
      availableElectronically: json['available_electronically'] as bool?,
      categoryId: json['category_id'] as String?,
      taxIds:
          (json['tax_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      modifierListInfo: (json['modifier_list_info'] as List<dynamic>?)
          ?.map((e) =>
              CatalogItemModifierListInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      variations: (json['variations'] as List<dynamic>)
          .map((e) => CatalogObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      productType: _$enumDecodeNullable(
          _$CatalogItemProductTypeEnumMap, json['product_type']),
      skipModifierScreen: json['skip_modifier_screen'] as bool?,
      itemOptions: (json['item_options'] as List<dynamic>?)
          ?.map((e) =>
              CatalogItemOptionForItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      sortName: json['sort_name'] as String?,
    );

Map<String, dynamic> _$CatalogItemToJson(CatalogItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'abbreviation': instance.abbreviation,
      'label_color': instance.labelColor,
      'available_online': instance.availableOnline,
      'available_for_pickup': instance.availableForPickup,
      'available_electronically': instance.availableElectronically,
      'category_id': instance.categoryId,
      'tax_ids': instance.taxIds,
      'modifier_list_info':
          instance.modifierListInfo?.map((e) => e.toJson()).toList(),
      'variations': instance.variations.map((e) => e.toJson()).toList(),
      'product_type': _$CatalogItemProductTypeEnumMap[instance.productType],
      'skip_modifier_screen': instance.skipModifierScreen,
      'item_options': instance.itemOptions?.map((e) => e.toJson()).toList(),
      'sort_name': instance.sortName,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$CatalogItemProductTypeEnumMap = {
  CatalogItemProductType.regular: 'REGULAR',
  CatalogItemProductType.giftCard: 'GIFT_CARD',
  CatalogItemProductType.appointmentsService: 'APPOINTMENTS_SERVICE',
  CatalogItemProductType.retailItem: 'RETAIL_ITEM',
  CatalogItemProductType.restaurantItem: 'RESTAURANT_ITEM',
};
