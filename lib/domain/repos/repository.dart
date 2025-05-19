import 'package:dartz/dartz.dart';
import 'package:nukeem/data/datasouce/remote_datasource.dart';
import 'package:nukeem/data/models/config_model.dart';
import 'package:nukeem/domain/failures/failures.dart';
import 'package:nukeem/domain/utils.dart';

abstract class BaseRepository {
  Future<Either<Failure, ConfigModel>> getConfig();
  Future<Either<Failure, ConfigModel>> getLeaderboard();
  Future<Either<Failure, ConfigModel>> getRockets();
}

class BaseRepositoryImpl implements BaseRepository {
  final RemoteDatasource api;

  BaseRepositoryImpl({required this.api});

  @override
  Future<Either<Failure, ConfigModel>> getConfig() {
    return wrapWithExceptionHandling<ConfigModel>(
      function: () async {
        final ConfigModel response = await api.getConfig();
        return response;
      },
    );
  }

  @override
  Future<Either<Failure, ConfigModel>> getLeaderboard() {
    return wrapWithExceptionHandling<ConfigModel>(
      function: () async {
        final ConfigModel response = await api.getConfig();
        return response;
      },
    );
  }

  @override
  Future<Either<Failure, ConfigModel>> getRockets() {
    return wrapWithExceptionHandling<ConfigModel>(
      function: () async {
        final ConfigModel response = await api.getConfig();
        return response;
      },
    );
  }
}
