import 'package:fish_redux/fish_redux.dart';

// 门户页面的 action
// Effect 接受处理的 Action，以 on{Verb} 命名
// Reducer 接受处理的 Action，以{verb} 命名
enum PortalAction { action }

class PortalActionCreator {
  static Action onAction() {
    return const Action(PortalAction.action,payload: null);
  }
}
