// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deployed_nuke_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeployedNukeImpl _$$DeployedNukeImplFromJson(Map<String, dynamic> json) =>
    _$DeployedNukeImpl(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      whooperId: (json['whooperId'] as num).toInt(),
    );

Map<String, dynamic> _$$DeployedNukeImplToJson(_$DeployedNukeImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'whooperId': instance.whooperId,
    };
