import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class LoginPage extends Page<LoginState, Map<String, dynamic>> {
  LoginPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies:
              Dependencies<LoginState>(adapter: null, slots: <String, Dependent<LoginState>>{
            'count_down': LoginConnector() + CountDownComponent(),
          }),
          middleware: <Middleware<LoginState>>[],
        );
}
