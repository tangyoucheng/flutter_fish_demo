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

//  CountDownState countDownState = CountDownState();
//  countDownState.countDownFinish = true;
//  ctx.dispatch(CountDownActionCreator.cancelTimer(countDownState));

var  currentSecond = 5;
  /// 启动倒计时的计时器
//  Timer.periodic(Duration(seconds: 1), (timer) {
//    if (currentSecond <= 1) {
//      timer?.cancel();
//      CountDownState countDownState = CountDownState();
//      countDownState.countDownFinish = true;
//      ctx.dispatch(CountDownActionCreator.cancelTimer(countDownState));
//
//    }
//    currentSecond--;
//    ctx.state.seconds = currentSecond;
//    ctx.dispatch(CountDownActionCreator.startTimer(currentSecond));
//  });


  //do something on initState
}
void _onLoad(Action action, Context<PreloadState> ctx) {
  //do something on onLoad
}
