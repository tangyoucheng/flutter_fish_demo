import 'dart:async';

import 'package:fish_redux/fish_redux.dart';

class CountDownState implements Cloneable<CountDownState> {
  //计数开始数值
  int seconds = 6;
  //定时器
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
