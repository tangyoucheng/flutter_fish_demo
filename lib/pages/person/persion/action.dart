import 'package:fish_redux/fish_redux.dart';

// 登陆用户个人信息的 action
// Effect 接受处理的 Action，以 on{Verb} 命名
// Reducer 接受处理的 Action，以{verb} 命名
enum PersonAction { action }

class PersonActionCreator {
  static Action onAction() {
    return const Action(PersonAction.action,payload: null);
  }
}
