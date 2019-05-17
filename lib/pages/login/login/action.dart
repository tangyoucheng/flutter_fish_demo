import 'package:fish_redux/fish_redux.dart';

// 登陆页面Action
// Effect 接受处理的 Action，以 on{Verb} 命名
// Reducer 接受处理的 Action，以{verb} 命名
enum LoginAction { action }

class LoginActionCreator {
  static Action onAction() {
    return const Action(LoginAction.action,payload: null);
  }
}
