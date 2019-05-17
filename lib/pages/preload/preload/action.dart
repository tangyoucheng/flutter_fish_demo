import 'package:fish_redux/fish_redux.dart';

// 预加载页面的 action
// Effect 接受处理的 Action，以 on{Verb} 命名
// Reducer 接受处理的 Action，以{verb} 命名
enum PreloadAction {
  onLoad,
}

class PreloadActionCreator {
  static Action onLoad(Map<String, Object> payload) {
    return Action(PreloadAction.onLoad, payload: payload);
  }

}
