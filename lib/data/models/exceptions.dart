import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class DataException   with _$DataException {
  const factory DataException.server({String? body, int? code}) = _Server;
  const factory DataException.cache({dynamic throwable, dynamic stacktrace}) =
      _Cache;
  const factory DataException.localData(
      {dynamic throwable, dynamic stacktrace}) = _LocalData;
  const factory DataException.unknown(dynamic throwable, dynamic stacktrace) =
      _Unknown;
}
