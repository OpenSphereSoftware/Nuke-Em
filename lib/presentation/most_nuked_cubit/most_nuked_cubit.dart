import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'most_nuked_state.dart';
part 'most_nuked_cubit.freezed.dart';

class MostNukedCubit extends Cubit<MostNukedState> {
  MostNukedCubit() : super(MostNukedState.initialLoading());
}
