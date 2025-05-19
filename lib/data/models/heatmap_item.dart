import 'package:freezed_annotation/freezed_annotation.dart';

part 'heatmap_item.freezed.dart';
part 'heatmap_item.g.dart';

@freezed
class HeatmapItem with _$HeatmapItem {
  const factory HeatmapItem({
    required double latitude,
    required double longitude,
    required int weight,
  }) = _HeatmapItem;

  factory HeatmapItem.fromJson(Map<String, dynamic> json) =>
      _$HeatmapItemFromJson(json);
}
