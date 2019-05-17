import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PersonPage extends Page<PersonState, Map<String, dynamic>> {
  PersonPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<PersonState>(
                adapter: null,
                slots: <String, Dependent<PersonState>>{
                }),
            middleware: <Middleware<PersonState>>[
            ],);

}
