import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/state.dart';

class LoginState implements Cloneable<LoginState> {
  //计数信息
  CountDownState countDownState = CountDownState();

  bool showAd;

  LoginState({this.showAd = true});
  @override
  LoginState clone() {
    return LoginState()
      ..countDownState = countDownState
      ..showAd = showAd;
  }
}

LoginState initState(Map<String, dynamic> args) {
  return LoginState();
}

class LoginConnector extends ConnOp<LoginState, CountDownState> {
  @override
  CountDownState get(LoginState state) {
    return state.countDownState;
  }

  @override
  void set(LoginState state, CountDownState subState) {
    state.countDownState = subState;
    if (subState.countDownFinish != null) {
      state.showAd = !subState.countDownFinish;
    }
  }
}
