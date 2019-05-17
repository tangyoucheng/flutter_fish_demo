import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PortalState> buildEffect() {
  return combineEffects(<Object, Effect<PortalState>>{
    PortalAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PortalState> ctx) {
}
