import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<HomeTabBarState> buildReducer() {
  return asReducer(
    <Object, Reducer<HomeTabBarState>>{
      HomeTabBarAction.action: _onAction,
    },
  );
}

HomeTabBarState _onAction(HomeTabBarState state, Action action) {
  final HomeTabBarState newState = state.clone();
  return newState;
}
