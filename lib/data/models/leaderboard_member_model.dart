import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_member_model.freezed.dart';
part 'leaderboard_member_model.g.dart';

@freezed
class LeaderBoardMember with _$LeaderBoardMember {
  const factory LeaderBoardMember({
    required String name,
    required String countryName,
    required int counter,
  }) = _LeaderBoardMember;

  factory LeaderBoardMember.fromJson(Map<String, dynamic> json) =>
      _$LeaderBoardMemberFromJson(json);
}
