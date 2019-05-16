import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeAppBarState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeAppBarState>>{
      HomeAppBarAction.action: _onAction,
    },
  );
}

HomeAppBarState _onAction(HomeAppBarState state, Action action) {
  final HomeAppBarState newState = state.clone();
  return newState;
}
