import 'dart:async';

import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<CountDownState> buildReducer() {
  return asReducer(
    <Object, Reducer<CountDownState>>{
      CountDownAction.action: _onAction,
      CountDownAction.runTimer: _onRunTimer,
      CountDownAction.startTimer: _startTimer,
      CountDownAction.cancelTimer: _cancelTimer,
    },
  );
}

CountDownState _onAction(CountDownState state, Action action) {
  final CountDownState newState = state.clone();
  return newState;
}

CountDownState _onRunTimer(CountDownState state, Action action) {
  final CountDownState newState = state.clone();
  return newState;
}

/// 启动倒计时的计时器。
CountDownState _startTimer(CountDownState state, Action action) {
  final CountDownState newState = state.clone();
  return newState;
}

/// 取消倒计时的计时器。
CountDownState _cancelTimer(CountDownState state, Action action) {
  final CountDownState newState = state.clone();
  newState.countDownFinish = true;
  newState.timer?.cancel();
  return newState;
}
