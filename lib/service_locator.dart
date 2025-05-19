import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:nukeem/data/datasouce/remote_datasource.dart';
import 'package:nukeem/domain/repos/repository.dart';

///
/// sl = service Locator
///

abstract class DataLayerServiceLocator {
  Future<void> setup();
  GetIt get sl;
}

class DataLayerServiceLocatorImpl implements DataLayerServiceLocator {
  DataLayerServiceLocatorImpl();
  final GetIt _dataLayerSL = GetIt.asNewInstance();

  @override
  GetIt get sl => _dataLayerSL;

  @override
  Future<void> setup() async {
    // externs
    _dataLayerSL.registerFactory<http.Client>(() => http.Client());
    _dataLayerSL.registerLazySingleton<RemoteDatasource>(() => RemoteDatasourceImpl(client: sl()));
    _dataLayerSL.registerLazySingleton<BaseRepository>(() => BaseRepositoryImpl(api: sl()));
  }
}
