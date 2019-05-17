import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PortalPage extends Page<PortalState, Map<String, dynamic>> {
  PortalPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PortalState>(
                adapter: null,
                slots: <String, Dependent<PortalState>>{
                }),
            middleware: <Middleware<PortalState>>[
            ],);

}
