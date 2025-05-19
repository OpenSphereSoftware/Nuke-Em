import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:nukeem/data/datasouce/remote_datasource.dart';
import 'package:nukeem/domain/repos/repository.dart';
import 'package:nukeem/presentation/config_cubit/config_cubit.dart';
import 'package:nukeem/presentation/most_nuked_cubit/most_nuked_cubit.dart';
import 'package:nukeem/presentation/rocket_selection_cubit/rocket_selection_cubit.dart';

///
/// sl = service Locator
///

abstract class DataLayerServiceLocator {
  Future<void> setup();
  GetIt get sl;
}

final GetIt serviceLocator = GetIt.asNewInstance();

class DataLayerServiceLocatorImpl implements DataLayerServiceLocator {
  DataLayerServiceLocatorImpl();

  @override
  GetIt get sl => serviceLocator;

  @override
  Future<void> setup() async {
    // externs
    serviceLocator.registerFactory<http.Client>(() => http.Client());
    serviceLocator.registerLazySingleton<RemoteDatasource>(() => RemoteDatasourceImpl(client: sl()));
    serviceLocator.registerLazySingleton<BaseRepository>(() => BaseRepositoryImpl(api: sl()));
    serviceLocator.registerFactory<RocketSelectionCubit>(()=>RocketSelectionCubit(baseRepository: sl()));
    serviceLocator.registerFactory<ConfigCubit>(()=>ConfigCubit(baseRepository: sl()));
    serviceLocator.registerFactory<MostNukedCubit>(()=>MostNukedCubit(baseRepository: sl()));
  }
}
