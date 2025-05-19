import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nukeem/data/models/config_model.dart';
import 'package:nukeem/domain/repos/repository.dart';

part 'config_state.dart';
part 'config_cubit.freezed.dart';

class ConfigCubit extends Cubit<ConfigState> {
  final BaseRepository baseRepository;
  ConfigCubit({required this.baseRepository}) : super(ConfigState.loading());

  void loadConfig() async {
    emit(ConfigState.loading());
    final config = await baseRepository.getConfig();
    config.fold((l) {
      emit(ConfigState.error());
    }, (r) {
      emit(ConfigState.loaded(config: r));
    });
  }
}
