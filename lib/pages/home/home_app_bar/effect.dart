import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeAppBarState> buildEffect() {
  return combineEffects(<Object, Effect<HomeAppBarState>>{
    HomeAppBarAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HomeAppBarState> ctx) {
}
