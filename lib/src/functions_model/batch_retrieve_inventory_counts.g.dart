// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_retrieve_inventory_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchRetrieveInventoryCountsRequest
    _$BatchRetrieveInventoryCountsRequestFromJson(Map<String, dynamic> json) =>
        BatchRetrieveInventoryCountsRequest(
          catalogObjectIds: (json['catalog_object_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          locationIds: (json['location_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          updatedAfter: json['updated_after'] as String?,
          cursor: json['cursor'] as String?,
          states: (json['states'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$InventoryStateEnumMap, e))
              .toList(),
          limit: (json['limit'] as num?)?.toInt(),
        );

Map<String, dynamic> _$BatchRetrieveInventoryCountsRequestToJson(
    BatchRetrieveInventoryCountsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('catalog_object_ids', instance.catalogObjectIds);
  writeNotNull('location_ids', instance.locationIds);
  writeNotNull('updated_after', instance.updatedAfter);
  writeNotNull('cursor', instance.cursor);
  writeNotNull('states',
      instance.states?.map((e) => _$InventoryStateEnumMap[e]!).toList());
  writeNotNull('limit', instance.limit);

  return val;
}

const _$InventoryStateEnumMap = {
  InventoryState.custom: 'CUSTOM',
  InventoryState.inStock: 'IN_STOCK',
  InventoryState.sold: 'SOLD',
  InventoryState.returnedByCustomer: 'RETURNED_BY_CUSTOMER',
  InventoryState.reservedForSale: 'RESERVED_FOR_SALE',
  InventoryState.soldOnline: 'SOLD_ONLINE',
  InventoryState.orderedFromVendor: 'ORDERED_FROM_VENDOR',
  InventoryState.receivedFromVendor: 'RECEIVED_FROM_VENDOR',
  InventoryState.inTransitTo: 'IN_TRANSIT_TO',
  InventoryState.none: 'NONE',
  InventoryState.waste: 'WASTE',
  InventoryState.unlinkedReturn: 'UNLINKED_RETURN',
};

BatchRetrieveInventoryCountsResponse
    _$BatchRetrieveInventoryCountsResponseFromJson(Map<String, dynamic> json) =>
        BatchRetrieveInventoryCountsResponse(
          counts: (json['counts'] as List<dynamic>?)
              ?.map((e) => InventoryCount.fromJson(e as Map<String, dynamic>))
              .toList(),
          cursor: json['cursor'] as String?,
          errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$BatchRetrieveInventoryCountsResponseToJson(
    BatchRetrieveInventoryCountsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors?.map((e) => e.toJson()).toList());
  writeNotNull('counts', instance.counts?.map((e) => e.toJson()).toList());
  writeNotNull('cursor', instance.cursor);

  return val;
}
