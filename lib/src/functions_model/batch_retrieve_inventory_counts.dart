import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'batch_retrieve_inventory_counts.g.dart';

@JsonSerializable()
class BatchRetrieveInventoryCountsRequest extends Equatable {
  const BatchRetrieveInventoryCountsRequest({
    this.catalogObjectIds,
    this.locationIds,
    this.updatedAfter,
    this.cursor,
    this.states,
    this.limit,
  });

  /// Converts a [Map] to a [BatchRetrieveInventoryCountsRequest]
  factory BatchRetrieveInventoryCountsRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BatchRetrieveInventoryCountsRequestFromJson(json);

  /// Converts a [BatchRetrieveInventoryCountsRequest] to a [Map]
  Map<String, dynamic> toJson() =>
      _$BatchRetrieveInventoryCountsRequestToJson(this);

  final List<String>? catalogObjectIds;
  final List<String>? locationIds;
  final String? updatedAfter;
  final String? cursor;
  final List<InventoryState>? states;
  final int? limit;

  @override
  List<Object?> get props => [
        catalogObjectIds,
        locationIds,
        updatedAfter,
        cursor,
        states,
        limit,
      ];
}

@JsonSerializable()
class BatchRetrieveInventoryCountsResponse extends SquareResponse {
  const BatchRetrieveInventoryCountsResponse({
    required this.counts,
    required this.cursor,
    super.errors,
  });

  /// Converts a [Map] to a [BatchRetrieveInventoryCountsResponse]
  factory BatchRetrieveInventoryCountsResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BatchRetrieveInventoryCountsResponseFromJson(json);

  /// Converts a [BatchRetrieveCatalogObjectsResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$BatchRetrieveInventoryCountsResponseToJson(this);

  final List<InventoryCount>? counts;
  final String? cursor;

  @override
  List<Object?> get props => [
        counts,
        cursor,
        errors,
      ];
}
