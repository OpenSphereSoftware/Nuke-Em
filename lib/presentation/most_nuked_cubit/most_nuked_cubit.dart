import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nukeem/domain/repos/repository.dart';

part 'most_nuked_state.dart';
part 'most_nuked_cubit.freezed.dart';

class MostNukedCubit extends Cubit<MostNukedState> {
  final BaseRepository baseRepository;
  Timer? _pollingTimer;

  MostNukedCubit({required this.baseRepository}) : super(MostNukedState.initialLoading());

  void loadLeaderboard() async {
    emit(MostNukedState.initialLoading());

    final data = await baseRepository.getLeaderboard();

    data.fold((l) {
      emit(MostNukedState.error());
    }, (r) {
      failureCount = 0;
      emit(MostNukedState.loaded(mostNuked: []));
      _startPolling();
    });
  }

  int failureCount = 0;

  void _startPolling() {
    _pollingTimer?.cancel();

    _pollingTimer = Timer.periodic(const Duration(minutes: 1), (_) async {
      final updatedData = await baseRepository.getLeaderboard();
      updatedData.fold((l) {
        failureCount++;
        if (failureCount > 2) {
          emit(MostNukedState.error());
        }
      }, (r) {
        failureCount = 0;
        emit(MostNukedState.loaded(mostNuked: []));
      });
    });
  }

  @override
  Future<void> close() {
    _pollingTimer?.cancel();
    return super.close();
  }
}
