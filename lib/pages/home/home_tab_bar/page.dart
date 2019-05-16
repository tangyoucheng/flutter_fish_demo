import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomeTabBarPage extends Page<HomeTabBarState, Map<String, dynamic>> {
  HomeTabBarPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomeTabBarState>(
                adapter: null,
                slots: <String, Dependent<HomeTabBarState>>{
                }),
            middleware: <Middleware<HomeTabBarState>>[
            ],);

}
