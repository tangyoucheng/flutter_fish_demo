import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/component.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PreloadPage extends Page<PreloadState, Map<String, dynamic>> {
  PreloadPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<PreloadState>(
              adapter: null,
              slots: <String, Dependent<PreloadState>>{
                'count_down': PreloadConnector() + CountDownComponent(),
              }),
          middleware: <Middleware<PreloadState>>[
            logMiddleware(tag: 'PreloadPage'),
          ],
        );
}
