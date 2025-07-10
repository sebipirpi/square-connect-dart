// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retrieve_inventory_counts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveInventoryCountsResponse _$RetrieveInventoryCountsResponseFromJson(
        Map<String, dynamic> json) =>
    RetrieveInventoryCountsResponse(
      counts: (json['counts'] as List<dynamic>?)
          ?.map((e) => InventoryCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: json['cursor'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => SquareError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RetrieveInventoryCountsResponseToJson(
    RetrieveInventoryCountsResponse instance) {
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
