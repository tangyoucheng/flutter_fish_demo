import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/action.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/state.dart';
import 'action.dart';
import 'state.dart';

Effect<PreloadState> buildEffect() {
  return combineEffects(<Object, Effect<PreloadState>>{
    Lifecycle.initState: _initState,
    PreloadAction.onLoad: _onLoad,
  });
}

void _initState(Action action, Context<PreloadState> ctx) {
  //do something on onLoad
}
void _onLoad(Action action, Context<PreloadState> ctx) {
  //do something on onLoad
}
