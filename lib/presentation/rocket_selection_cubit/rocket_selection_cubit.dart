import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nukeem/data/models/rocket_model.dart';
import 'package:nukeem/domain/repos/repository.dart';

import 'rocket_selection_state.dart';

class RocketSelectionCubit extends Cubit<RocketSelectionState> {
  final BaseRepository baseRepository;
  RocketSelectionCubit({required this.baseRepository}) : super(RocketSelectionState.loading());

  int _currentSelection = 0;
  List<Rocket> rockets = [];

  void load() async {
    emit(RocketSelectionState.loading());
    final rocketsOrFailure = await baseRepository.getRockets();
    rocketsOrFailure.fold((l) {
      // load rocket types
      emit(RocketSelectionState.error());
    }, (r) {
      rockets = r;
      // load rocket types
      emit(RocketSelectionState.selection(selected: _currentSelection, rockets: r));
    });
  }

  void select(int selection) {
    _currentSelection = selection;
    emit(RocketSelectionState.selection(selected: _currentSelection, rockets: rockets));
    // select rocket
  }

  void launch() async {
    emit(RocketSelectionState.launching(selected: _currentSelection, rockets: rockets));
    await baseRepository.sendNuke();
    _currentSelection = 0;
    emit(RocketSelectionState.selection(selected: _currentSelection, rockets: rockets));
    // set timer

    // after timer select one again
  }
}
