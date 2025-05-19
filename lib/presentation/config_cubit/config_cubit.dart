import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_state.dart';
part 'config_cubit.freezed.dart';

class ConfigCubit extends Cubit<ConfigState> {
  ConfigCubit() : super(ConfigState.loading());
}
