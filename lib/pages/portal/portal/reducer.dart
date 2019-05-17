import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PortalState> buildReducer() {
  return asReducer(
    <Object, Reducer<PortalState>>{
      PortalAction.action: _onAction,
    },
  );
}

PortalState _onAction(PortalState state, Action action) {
  final PortalState newState = state.clone();
  return newState;
}
