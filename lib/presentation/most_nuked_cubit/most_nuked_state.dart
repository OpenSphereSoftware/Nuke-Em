part of 'most_nuked_cubit.dart';

@freezed
class MostNukedState with _$MostNukedState {
  const factory MostNukedState.initialLoading() = _InitialLoading;
  const factory MostNukedState.error() = _Error;
  const factory MostNukedState.loaded({required List<String> mostNuked}) = _Loaded;
}
