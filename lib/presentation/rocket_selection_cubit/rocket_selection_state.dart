import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nukeem/data/models/rocket_model.dart';

part 'rocket_selection_state.freezed.dart';

@freezed
class RocketSelectionState with _$RocketSelectionState {
  const factory RocketSelectionState.loading() = _Loading;
  const factory RocketSelectionState.error() = _Error;
  const factory RocketSelectionState.selection({required int selected, required List<Rocket> rockets}) = _Selection;
  const factory RocketSelectionState.launching({required int selected, required List<Rocket> rockets}) = _Launching;
  const factory RocketSelectionState.cooldown({required int selected, required List<Rocket> rockets}) = _Cooldown;
}
