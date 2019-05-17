import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/state.dart';

class PreloadState implements Cloneable<PreloadState> {
  //计数开始数值
  int seconds;

  bool showAd;

  PreloadState({this.showAd = true});
  @override
  PreloadState clone() {
    return PreloadState()
      ..seconds = seconds
      ..showAd = showAd;
  }
}

PreloadState initState(Map<String, dynamic> args) {
  return PreloadState();
}

class PreloadConnector extends ConnOp<PreloadState, CountDownState> {
  CountDownState countDownState;
  @override
  CountDownState get(PreloadState state) {
//    CountDownState countDownState = CountDownState();

    if (countDownState == null) {
      countDownState = CountDownState();
    }

//    countDownState.seconds = state.seconds;
//
//    countDownState.timer = Timer.periodic(Duration(seconds: 1), (timer) {
//      if (countDownState.seconds <= 1) {
//        countDownState.countDownFinish = true;
//        countDownState.timer?.cancel();
//        return countDownState;
//      }
//      countDownState.seconds--;
////    countDownState.done =
////        state.toDos.where((ToDoState tds) => tds.isDone).toList().length;
//
//      return countDownState;
//    });
    return countDownState;
  }

  @override
  void set(PreloadState state, CountDownState subState) {
    countDownState = subState;
//    state.seconds = subState.seconds;
    state.showAd = !subState.countDownFinish;
  }
}
