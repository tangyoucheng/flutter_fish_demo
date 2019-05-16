import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeTabBarState> buildEffect() {
  return combineEffects(<Object, Effect<HomeTabBarState>>{
    HomeTabBarAction.action: _onAction,
  });
}

void _onAction(Action action, Context<HomeTabBarState> ctx) {
}
