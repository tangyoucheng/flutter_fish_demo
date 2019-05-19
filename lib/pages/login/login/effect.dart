import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_demo/pages/portal/portal/page.dart';
import 'action.dart';
import 'state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    Lifecycle.initState: _init,
    LoginAction.onObscurePassword: _onObscurePassword,
    LoginAction.onLogin: _onLogin,
  });
}

void _init(Action action, Context<LoginState> ctx) {
//  ctx.state.editCtrlPassword.addListener(() {
//    ctx.dispatch(
//        LoginActionCreator.obscurePassword());
//  });
}
//密码查看处理
void _onObscurePassword(Action action, Context<LoginState> ctx) {
  //保存页面入力的数据
  ctx.state.formKey.currentState.save();
  //编辑obscureText的值
  ctx.state.isObscure = !ctx.state.isObscure;
  ctx.state.eyeColor = ctx.state.isObscure ? Colors.grey : Theme.of(ctx.context).iconTheme.color;

  ctx.dispatch(LoginActionCreator.obscurePassword());
}
//登录处理
void _onLogin(Action action, Context<LoginState> ctx) {
  //验证页面入力的数据

  if (ctx.state.formKey.currentState.validate()) {
    ctx.dispatch(LoginActionCreator.obscurePassword());

//    Navigator.of(ctx.context).pop<LoginState>(ctx.state.toDo);
    Navigator.of(ctx.context).pushNamed('portal');
  }
}
