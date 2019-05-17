import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class CountDownComponent extends Component<CountDownState> {
  CountDownComponent()
      : super(
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<CountDownState>(
              adapter: null, slots: <String, Dependent<CountDownState>>{}),
        );
}
