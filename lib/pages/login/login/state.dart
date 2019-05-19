import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/components/count_down/count_down/state.dart';

class LoginState implements Cloneable<LoginState> {
  //计数信息
  CountDownState countDownState = CountDownState();

  // 显示预加载页面标识
  bool showAd;

  //用户登录相关信息
  final formKey = GlobalKey<FormState>();
  TextEditingController editCtrlEmail;
  TextEditingController editCtrlPassword;

//  FocusNode focusNodePassword;

  String email, password;
  bool isObscure = true;
  Color eyeColor;
  List loginMethod = [
    {
      "title": "QQ",
      "icon": GroovinMaterialIcons.qqchat,
    },
    {
      "title": "微信",
      "icon": GroovinMaterialIcons.wechat,
    },
    {
      "title": "微博",
      "icon": GroovinMaterialIcons.blogger,
    },
  ];

  LoginState({this.showAd = true});
  @override
  LoginState clone() {
    return LoginState()
      ..loginMethod = loginMethod
      ..email = email
      ..editCtrlEmail = editCtrlEmail
      ..password = password
      ..editCtrlPassword = editCtrlPassword
      ..isObscure = isObscure
      ..eyeColor = eyeColor
      ..countDownState = countDownState
      ..showAd = showAd;
  }
}
//初期化处理
LoginState initState(Map<String, dynamic> args) {
  final LoginState state = LoginState();
  state.editCtrlPassword = TextEditingController(text: null);
  return state;
}

//倒计数组件信息的相关设定处理
class LoginConnector extends ConnOp<LoginState, CountDownState> {
  @override
  CountDownState get(LoginState state) {
    return state.countDownState;
  }

  @override
  void set(LoginState state, CountDownState subState) {
    state.countDownState = subState;
    if (subState.countDownFinish != null) {
      state.showAd = !subState.countDownFinish;
//      state.focusNodePassword = FocusNode();
    }
  }
}
