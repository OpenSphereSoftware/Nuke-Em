import 'package:flutter_bloc/flutter_bloc.dart';

import 'rocket_selection_state.dart';

class RocketSelectionCubit extends Cubit<RocketSelectionState> {
  RocketSelectionCubit() : super(RocketSelectionState.loading());

  int _currentSelection = 0;

  void load() async {
    await Future.delayed(Duration(seconds: 5));
    // load rocket types
    emit(RocketSelectionState.selection(selected: _currentSelection));
  }

  void select(int selection) {
    _currentSelection = selection;
    emit(RocketSelectionState.selection(selected: _currentSelection));
    // select rocket
  }

  void launch() {
    // set timer

    // after timer select one again
    _currentSelection = 0;
  }
}
