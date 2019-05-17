import 'package:fish_redux/fish_redux.dart';

// 预加载页面的 action
// Effect 接受处理的 Action，以 on{Verb} 命名
// Reducer 接受处理的 Action，以{verb} 命名
enum PreloadAction {
  onLoad,
//  startTimer,
//  cancelTimer,
}

class PreloadActionCreator {
  static Action onLoad(Map<String, Object> payload) {
    return Action(PreloadAction.onLoad, payload: payload);
  }

//  /// 启动倒计时的计时器。
//  static Action startTimer() {
//    return const Action(PreloadAction.startTimer,payload: null);
//  }
//
//  /// 取消倒计时的计时器。
//  static Action cancelTimer() {
//    return const Action(PreloadAction.cancelTimer,payload: null);
//  }
}
