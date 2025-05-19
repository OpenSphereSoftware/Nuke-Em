// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_member_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeaderBoardMemberImpl _$$LeaderBoardMemberImplFromJson(
        Map<String, dynamic> json) =>
    _$LeaderBoardMemberImpl(
      name: json['name'] as String,
      countryName: json['countryName'] as String,
      counter: (json['counter'] as num).toInt(),
    );

Map<String, dynamic> _$$LeaderBoardMemberImplToJson(
        _$LeaderBoardMemberImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'countryName': instance.countryName,
      'counter': instance.counter,
    };
