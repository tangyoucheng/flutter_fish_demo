import 'package:fish_redux/fish_redux.dart';

// 首页的TabBar action
// Effect 接受处理的 Action，以 on{Verb} 命名
// Reducer 接受处理的 Action，以{verb} 命名
enum HomeTabBarAction { action }

class HomeTabBarActionCreator {
  static Action onAction() {
    return const Action(HomeTabBarAction.action,payload: null);
  }
}
