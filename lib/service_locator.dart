import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:nukeem/data/datasouce/remote_datasource.dart';
import 'package:nukeem/domain/repos/repository.dart';
import 'package:nukeem/presentation/config_cubit/config_cubit.dart';
import 'package:nukeem/presentation/most_nuked_cubit/most_nuked_cubit.dart';
import 'package:nukeem/presentation/rocket_selection_cubit/rocket_selection_cubit.dart';
import 'package:nukeem/presentation/scammer_nuke_cubit/scammer_nuke_cubit.dart';
import 'package:solana_wallet_adapter/solana_wallet_adapter.dart';
import 'package:solana_web3/solana_web3.dart' as solana_web3;

///
/// sl = service Locator
///

abstract class ServiceLocator {
  Future<void> setup();
  GetIt get sl;
}

final GetIt serviceLocator = GetIt.asNewInstance();

class ServiceLocatorImpl implements ServiceLocator {
  ServiceLocatorImpl();

  @override
  GetIt get sl => serviceLocator;

  @override
  Future<void> setup() async {
    // externs
    serviceLocator.registerFactory<http.Client>(() => http.Client());
    serviceLocator.registerLazySingleton<RemoteDatasource>(() => RemoteDatasourceImpl(client: sl()));
    serviceLocator.registerLazySingleton<BaseRepository>(() => BaseRepositoryImpl(api: sl()));
    serviceLocator.registerFactory<RocketSelectionCubit>(() => RocketSelectionCubit(baseRepository: sl()));
    serviceLocator.registerFactory<ConfigCubit>(() => ConfigCubit(baseRepository: sl()));
    serviceLocator.registerFactory<MostNukedCubit>(() => MostNukedCubit(baseRepository: sl()));
    serviceLocator.registerFactory<ScammerNukeCubit>(() => ScammerNukeCubit());

    // Register the SolanaWalletAdapter as a singleton
    serviceLocator.registerLazySingleton<SolanaWalletAdapter>(() => SolanaWalletAdapter(
          AppIdentity(
            name: "Nuke-Em",
            uri: Uri.parse("https://nuke-em.com"),
            icon: Uri.parse("https://nuke-em.com/logo.png"),
          ),
          cluster: solana_web3.Cluster.mainnet,
        ));
  }
}
