import 'package:fish_redux/fish_redux.dart';

// 首页的 action
// Effect 接受处理的 Action，以 on{Verb} 命名
// Reducer 接受处理的 Action，以{verb} 命名
enum HomeAction { action }

class HomeActionCreator {
  static Action onAction() {
    return const Action(HomeAction.action, payload: null);
  }
}
