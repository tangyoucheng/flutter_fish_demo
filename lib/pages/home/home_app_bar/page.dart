import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomeAppBarPage extends Page<HomeAppBarState, Map<String, dynamic>> {
  HomeAppBarPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomeAppBarState>(
                adapter: null,
                slots: <String, Dependent<HomeAppBarState>>{
                }),
            middleware: <Middleware<HomeAppBarState>>[
            ],);

}
