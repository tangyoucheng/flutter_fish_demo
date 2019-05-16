import 'package:fish_redux/fish_redux.dart';

class HomeTabBarState implements Cloneable<HomeTabBarState> {

  @override
  HomeTabBarState clone() {
    return HomeTabBarState();
  }
}

HomeTabBarState initState(Map<String, dynamic> args) {
  return HomeTabBarState();
}
