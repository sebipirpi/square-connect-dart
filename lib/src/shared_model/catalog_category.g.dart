// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogCategory _$CatalogCategoryFromJson(Map<String, dynamic> json) =>
    CatalogCategory(
      name: json['name'] as String?,
      imageIds: (json['image_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      channels: (json['channels'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isTopLevel: json['is_top_level'] as bool?,
      rootCategory: json['root_category'] as String?,
      onlineVisibility: json['online_visibility'] as bool?,
    );

Map<String, dynamic> _$CatalogCategoryToJson(CatalogCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('image_ids', instance.imageIds);
  writeNotNull('channels', instance.channels);
  writeNotNull('is_top_level', instance.isTopLevel);
  writeNotNull('root_category', instance.rootCategory);
  writeNotNull('online_visibility', instance.onlineVisibility);
  return val;
}
