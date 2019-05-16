import 'package:fish_redux/fish_redux.dart';

class HomeAppBarState implements Cloneable<HomeAppBarState> {

  @override
  HomeAppBarState clone() {
    return HomeAppBarState();
  }
}

HomeAppBarState initState(Map<String, dynamic> args) {
  return HomeAppBarState();
}
