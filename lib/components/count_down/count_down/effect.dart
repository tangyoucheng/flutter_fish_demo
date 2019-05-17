import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<CountDownState> buildEffect() {
  return combineEffects(<Object, Effect<CountDownState>>{
    Lifecycle.initState: _init,
    CountDownAction.action: _onAction,
  });
}

void _init(Action action, Context<CountDownState> ctx) {
  if (!ctx.isDisposed && ctx.state.seconds > 0) {
    /// 启动倒计时的计时器
    ctx.state.timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (ctx.state.seconds <= 1) {
        ctx.state.countDownFinish = true;
        timer?.cancel();
        ctx.dispatch(CountDownActionCreator.cancelTimer(ctx.state));
      }
      ctx.state.seconds--;
      ctx.dispatch(CountDownActionCreator.startTimer());
    });
  }
}

void _onAction(Action action, Context<CountDownState> ctx) {}
