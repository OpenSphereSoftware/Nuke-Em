import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocket_selection_state.freezed.dart';

@freezed
class RocketSelectionState with _$RocketSelectionState {
  const factory RocketSelectionState.loading() = _Loading;
  const factory RocketSelectionState.error() = _Error;
  const factory RocketSelectionState.selection({required int selected}) = _Selection;
  const factory RocketSelectionState.launching() = _Launching;
  const factory RocketSelectionState.cooldown({required int seconds}) = _Cooldown;
}
