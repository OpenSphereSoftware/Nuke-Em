import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const Failure._();
  const factory Failure.server() = _ServerFailure;
  const factory Failure.cache() = _CacheFailure;
  const factory Failure.localData() = _LocalData;
  const factory Failure.general() = _GeneralFailure;
}
