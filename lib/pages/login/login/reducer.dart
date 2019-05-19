import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Reducer<LoginState> buildReducer() {
  return asReducer(
    <Object, Reducer<LoginState>>{
      LoginAction.obscurePassword: _obscurePassword,
    },
  );
}

//密码框的眼睛图标点击处理后，刷新当前信息
LoginState _obscurePassword(LoginState state, Action action) {
//  LoginState currentLoginState = action.payload;
  final LoginState newState = state.clone();
  //设定email、密码的初始值
  newState.editCtrlEmail = TextEditingController(text: newState.email);
  newState.editCtrlPassword = TextEditingController(text: newState.password);
  return newState;
}
