import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'inventory_count.g.dart';

@JsonSerializable()
class InventoryCount extends Equatable {
  const InventoryCount({
    this.catalogObjectId,
    this.catalogObjectType,
    this.state,
    this.locationId,
    this.quantity,
    this.calculatedAt,
  });

  /// Converts a [Map] to an [InventoryCount]
  factory InventoryCount.fromJson(Map<String, dynamic> json) =>
      _$InventoryCountFromJson(json);

  /// Converts a [InventoryCount] to a [Map]
  Map<String, dynamic> toJson() => _$InventoryCountToJson(this);

  final String? catalogObjectId;
  final CatalogObjectType? catalogObjectType;
  final InventoryState? state;
  final String? locationId;
  final int? quantity;
  final DateTime? calculatedAt;

  @override
  List<Object?> get props {
    return [
      catalogObjectId,
      catalogObjectType,
      state,
      locationId,
      quantity,
      calculatedAt,
    ];
  }
}
