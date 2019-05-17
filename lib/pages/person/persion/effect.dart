import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PersonState> buildEffect() {
  return combineEffects(<Object, Effect<PersonState>>{
    PersonAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PersonState> ctx) {
}
