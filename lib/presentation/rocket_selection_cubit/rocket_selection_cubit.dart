import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nukeem/domain/repos/repository.dart';

import 'rocket_selection_state.dart';

class RocketSelectionCubit extends Cubit<RocketSelectionState> {
  final BaseRepository baseRepository;
  RocketSelectionCubit({required this.baseRepository}) : super(RocketSelectionState.loading());

  int _currentSelection = 0;

  void load() async {
    await Future.delayed(Duration(seconds: 5));
    /*final rocketsOrFailure = await baseRepository.getRockets();
    rocketsOrFailure.fold((l) {
      // load rocket types
      emit(RocketSelectionState.error());
    }, (r) {
      // load rocket types
      emit(RocketSelectionState.selection(selected: _currentSelection));
    });*/
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
