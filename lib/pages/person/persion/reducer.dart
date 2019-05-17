import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PersonState> buildReducer() {
  return asReducer(
    <Object, Reducer<PersonState>>{
      PersonAction.action: _onAction,
    },
  );
}

PersonState _onAction(PersonState state, Action action) {
  final PersonState newState = state.clone();
  return newState;
}
