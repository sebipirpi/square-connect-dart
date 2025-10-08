import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/src/shared_model/catalog_parent_category.dart';

part 'catalog_category.g.dart';

@JsonSerializable()
class CatalogCategory extends Equatable {
  const CatalogCategory({
    this.name,
    this.imageIds,
    this.channels,
    this.isTopLevel,
    this.rootCategory,
    this.onlineVisibility,
    this.parentCategory,
  });

  /// Converts a [Map] to an [CatalogCategory]
  factory CatalogCategory.fromJson(Map<String, dynamic> json) =>
      _$CatalogCategoryFromJson(json);

  /// Converts a [CatalogCategory] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogCategoryToJson(this);

  final String? name;
  final List<String>? imageIds;
  final List<String>? channels;
  final bool? isTopLevel;
  final String? rootCategory;
  final bool? onlineVisibility;
  final CatalogParentCategory? parentCategory;

  @override
  List<Object?> get props => [
        name,
        imageIds,
        channels,
        isTopLevel,
        rootCategory,
        onlineVisibility,
        parentCategory,
      ];
}
