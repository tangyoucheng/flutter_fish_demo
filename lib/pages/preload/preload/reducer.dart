import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/state.dart';

import 'action.dart';
import 'state.dart';

Reducer<PreloadState> buildReducer() {
  return asReducer(
    <Object, Reducer<PreloadState>>{
//      PreloadAction.startTimer: _startTimer,
    },
  );
}
//
//PreloadState _startTimer(PreloadState state, Action action) {
//  final PreloadState newState = state.clone();
//  return newState;
//}
