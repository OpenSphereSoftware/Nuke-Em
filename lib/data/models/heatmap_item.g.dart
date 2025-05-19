// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heatmap_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeatmapItemImpl _$$HeatmapItemImplFromJson(Map<String, dynamic> json) =>
    _$HeatmapItemImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      weight: (json['weight'] as num).toInt(),
    );

Map<String, dynamic> _$$HeatmapItemImplToJson(_$HeatmapItemImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'weight': instance.weight,
    };
