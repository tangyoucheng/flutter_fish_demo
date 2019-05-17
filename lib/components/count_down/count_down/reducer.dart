import 'dart:async';

import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CountDownState> buildReducer() {
  return asReducer(
    <Object, Reducer<CountDownState>>{
      CountDownAction.startTimer: _startTimer,
      CountDownAction.cancelTimer: _cancelTimer,
    },
  );
}

/// 开始倒计时。
CountDownState _startTimer(CountDownState state, Action action) {
  final CountDownState newState = state.clone();
  return newState;
}

/// 取消倒计时。
CountDownState _cancelTimer(CountDownState state, Action action) {
  final CountDownState newState = state.clone();
  newState.countDownFinish = true;
  newState.timer?.cancel();
  return newState;
}
