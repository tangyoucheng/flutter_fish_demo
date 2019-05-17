import 'dart:async';

import 'package:fish_redux/fish_redux.dart';

class CountDownState implements Cloneable<CountDownState> {
  //计数开始数值
  int seconds = 6;
  Timer timer;
  //倒计数完成
  bool countDownFinish;

  CountDownState({this.seconds = 6, this.timer});

  @override
  CountDownState clone() {
    return CountDownState()
      ..seconds = seconds
      ..timer = timer
      ..countDownFinish = countDownFinish;
    ;
  }
}

CountDownState initState(Map<String, dynamic> args) {
  return CountDownState();
}

class CountDownConnector extends ConnOp<CountDownState, CountDownState> {
//  @override
//  CountDownState get(CountDownState state) {
//    final CountDownState countDownState = CountDownState();
//    countDownState.seconds = 10;
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
//    return countDownState;
//  }

  @override
  void set(CountDownState state, CountDownState subState) {
  }
}