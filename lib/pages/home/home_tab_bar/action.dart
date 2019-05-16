import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeTabBarAction { action }

class HomeTabBarActionCreator {
  static Action onAction() {
    return const Action(HomeTabBarAction.action);
  }
}
