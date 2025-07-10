import 'package:json_annotation/json_annotation.dart';
import 'package:square_connect/square_connect.dart';

part 'retrieve_inventory_counts.g.dart';

@JsonSerializable()
class RetrieveInventoryCountsResponse extends SquareResponse {
  const RetrieveInventoryCountsResponse({
    required this.counts,
    required this.cursor,
    super.errors,
  });

  /// Converts a [Map] to a [RetrieveInventoryCountsResponse]
  factory RetrieveInventoryCountsResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RetrieveInventoryCountsResponseFromJson(json);

  /// Converts a [RetrieveInventoryCountsResponse] to a [Map]
  Map<String, dynamic> toJson() =>
      _$RetrieveInventoryCountsResponseToJson(this);

  final List<InventoryCount>? counts;
  final String? cursor;

  @override
  List<Object?> get props => [
        counts,
        cursor,
        errors,
      ];
}
