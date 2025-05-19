import 'package:dartz/dartz.dart';
import 'package:nukeem/data/models/exceptions.dart';
import 'package:nukeem/domain/failures/failures.dart';

Future<Either<Failure, T>> wrapWithExceptionHandling<T>({
  required Future<T> Function() function,
}) async {
  try {
    final result = await function();
    return right(result);
  } on DataException catch (e, s) {
    return e.map(cache: (_) {
      return left(const Failure.cache());
    }, localData: (_) {
      return left(const Failure.localData());
    }, server: (serverException) {
      return left(const Failure.server());
    }, unknown: (_) {
      return left(const Failure.general());
    });
  } catch (e, s) {
    return left(const Failure.general());
  }
}
