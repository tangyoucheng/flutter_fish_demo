import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/pages/login/login/state.dart';

// 登陆页面Action
// Effect 接受处理的 Action，以 on{Verb} 命名
// Reducer 接受处理的 Action，以{verb} 命名
enum LoginAction {
  onObscurePassword,
  obscurePassword,
  saveEmail,
  savePassword,
  onLogin,
}

class LoginActionCreator {
  //密码框内容显示、隐藏处理
  static Action onObscurePassword() {
    return Action(LoginAction.onObscurePassword, payload: null);
  }

  //重新渲染页面的密码框内容
  static Action obscurePassword() {
    return Action(LoginAction.obscurePassword, payload: null);
  }
  //登录处理
  static Action onLogin() {
    return Action(LoginAction.onLogin, payload: null);
  }
}
