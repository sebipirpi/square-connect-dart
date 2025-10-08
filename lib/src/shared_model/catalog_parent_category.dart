import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_parent_category.g.dart';

@JsonSerializable()
class CatalogParentCategory extends Equatable {
  const CatalogParentCategory({
    this.id,
    this.ordinal,
  });

    /// Converts a [Map] to an [CatalogParentCategory]
  factory CatalogParentCategory.fromJson(Map<String, dynamic> json) =>
      _$CatalogParentCategoryFromJson(json);

  /// Converts a [CatalogParentCategory] to a [Map]
  Map<String, dynamic> toJson() => _$CatalogParentCategoryToJson(this);

  final String? id;
  final int? ordinal;

  @override
  List<Object?> get props => [
        id,
        ordinal,
      ];
}
