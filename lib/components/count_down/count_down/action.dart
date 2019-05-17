import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/state.dart';

// 倒计数组件的 action
// Effect 接受处理的 Action，以 on{Verb} 命名
// Reducer 接受处理的 Action，以{verb} 命名
enum CountDownAction {
  action,
  runTimer,
  startTimer,
  cancelTimer,
}

class CountDownActionCreator {
  static Action onAction() {
    return Action(CountDownAction.action, payload: null);
  }

  /// 启动倒计时的计时器。
  static Action onRunTimer() {
    return Action(CountDownAction.runTimer, payload: null);
  }

  /// 开始倒计时。
  static Action startTimer() {
    return Action(CountDownAction.startTimer, payload: null);
  }

  /// 取消倒计时。
  static Action cancelTimer(CountDownState countDownState) {
    return Action(CountDownAction.cancelTimer, payload: countDownState);
  }
}
