import 'package:freezed_annotation/freezed_annotation.dart';

part 'deployed_nuke_model.freezed.dart';
part 'deployed_nuke_model.g.dart';

@freezed
class DeployedNuke with _$DeployedNuke {
  const factory DeployedNuke({
    required double latitude,
    required double longitude,
    required int whooperId,
  }) = _DeployedNuke;

  factory DeployedNuke.fromJson(Map<String, dynamic> json) =>
      _$DeployedNukeFromJson(json);
}
