// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RocketImpl _$$RocketImplFromJson(Map<String, dynamic> json) => _$RocketImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      damage: (json['damage'] as num).toInt(),
    );

Map<String, dynamic> _$$RocketImplToJson(_$RocketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'damage': instance.damage,
    };
