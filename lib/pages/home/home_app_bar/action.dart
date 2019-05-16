import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum HomeAppBarAction { action }

class HomeAppBarActionCreator {
  static Action onAction() {
    return const Action(HomeAppBarAction.action);
  }
}
