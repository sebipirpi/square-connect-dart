// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_parent_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatalogParentCategory _$CatalogParentCategoryFromJson(
        Map<String, dynamic> json) =>
    CatalogParentCategory(
      id: json['id'] as String?,
      ordinal: (json['ordinal'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CatalogParentCategoryToJson(
    CatalogParentCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('ordinal', instance.ordinal);
  return val;
}
