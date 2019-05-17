import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CountDownState> buildEffect() {
  return combineEffects(<Object, Effect<CountDownState>>{
    Lifecycle.initState: _init,
    CountDownAction.action: _onAction,
    CountDownAction.runTimer: _onRunTimer,
  });
}

void _init(Action action, Context<CountDownState> ctx) {
  ctx.dispatch(CountDownActionCreator.onRunTimer());
}

void _onAction(Action action, Context<CountDownState> ctx) {}

void _onRunTimer(Action action, Context<CountDownState> ctx) {
  if (!ctx.isDisposed && ctx.state.seconds > 0) {
    var currentSecond = ctx.state.seconds;

//    currentSecond--;
//    ctx.dispatch(CountDownActionCreator.startTimer(currentSecond));
    /// 启动倒计时的计时器
    ctx.state.timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (currentSecond <= 1) {
        ctx.state.countDownFinish = true;
        timer?.cancel();
        ctx.dispatch(CountDownActionCreator.cancelTimer(ctx.state));

      }
      currentSecond--;
      ctx.dispatch(CountDownActionCreator.startTimer(currentSecond));
    });
  }
}
