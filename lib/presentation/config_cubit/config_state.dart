part of 'config_cubit.dart';

@freezed
class ConfigState with _$ConfigState {
  const factory ConfigState.loading() = _Loading;
  const factory ConfigState.error() = _Error;
  const factory ConfigState.loaded({required ConfigModel config}) = _Loaded;
}
