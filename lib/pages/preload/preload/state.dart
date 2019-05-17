import 'dart:async';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/state.dart';

class PreloadState implements Cloneable<PreloadState> {
  //计数信息
  CountDownState countDownState = CountDownState();

  bool showAd;

  PreloadState({this.showAd = true});
  @override
  PreloadState clone() {
    return PreloadState()
      ..countDownState = countDownState
      ..showAd = showAd;
  }
}

PreloadState initState(Map<String, dynamic> args) {
  return PreloadState();
}

class PreloadConnector extends ConnOp<PreloadState, CountDownState> {
  @override
  CountDownState get(PreloadState state) {
    return state.countDownState;
  }

  @override
  void set(PreloadState state, CountDownState subState) {
    state.countDownState = subState;
    if (subState.countDownFinish != null) {
      state.showAd = !subState.countDownFinish;
    }
  }
}
