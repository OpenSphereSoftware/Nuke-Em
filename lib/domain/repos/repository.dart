import 'package:dartz/dartz.dart';
import 'package:nukeem/data/datasouce/remote_datasource.dart';
import 'package:nukeem/data/models/config_model.dart';
import 'package:nukeem/data/models/heatmap_item.dart';
import 'package:nukeem/data/models/leaderboard_member_model.dart';
import 'package:nukeem/data/models/rocket_model.dart';
import 'package:nukeem/domain/failures/failures.dart';
import 'package:nukeem/domain/utils.dart';

abstract class BaseRepository {
  Future<Either<Failure, ConfigModel>> getConfig();
  Future<Either<Failure, List<LeaderBoardMember>>> getLeaderboard();
  Future<Either<Failure, List<Rocket>>> getRockets();
  Future<Either<Failure, List<HeatmapItem>>> getHeatmap();
  Future<Either<Failure, void>> sendNuke();
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
  Future<Either<Failure, List<LeaderBoardMember>>> getLeaderboard() {
    return wrapWithExceptionHandling<List<LeaderBoardMember>>(
      function: () async {
        final List<LeaderBoardMember> response = await api.getLeaderboard();
        return response;
      },
    );
  }

  @override
  Future<Either<Failure, List<Rocket>>> getRockets() {
    return wrapWithExceptionHandling<List<Rocket>>(
      function: () async {
        final List<Rocket> response = await api.getRockets();
        return response;
      },
    );
  }

  @override
  Future<Either<Failure, List<HeatmapItem>>> getHeatmap() {
    return wrapWithExceptionHandling<List<HeatmapItem>>(
      function: () async {
        final List<HeatmapItem> response = await api.getHeatmap();
        return response;
      },
    );
  }

  @override
  Future<Either<Failure, void>> sendNuke() {
    return wrapWithExceptionHandling<void>(
      function: () async {
        await api.getHeatmap();
        return;
      },
    );
  }
}
