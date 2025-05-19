// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigModelImpl _$$ConfigModelImplFromJson(Map<String, dynamic> json) =>
    _$ConfigModelImpl(
      disclaimerMessage: json['disclaimerMessage'] as String,
      currentTimeUtc: DateTime.parse(json['currentTimeUtc'] as String),
      nextRefreshTimeUtc: DateTime.parse(json['nextRefreshTimeUtc'] as String),
      refreshInHours: (json['refreshInHours'] as num).toInt(),
    );

Map<String, dynamic> _$$ConfigModelImplToJson(_$ConfigModelImpl instance) =>
    <String, dynamic>{
      'disclaimerMessage': instance.disclaimerMessage,
      'currentTimeUtc': instance.currentTimeUtc.toIso8601String(),
      'nextRefreshTimeUtc': instance.nextRefreshTimeUtc.toIso8601String(),
      'refreshInHours': instance.refreshInHours,
    };
