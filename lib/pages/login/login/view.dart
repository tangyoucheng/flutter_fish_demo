import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fish_demo/common/constants/common_contants.dart';
import 'package:flutter_fish_demo/common/utils/screen_utils.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

import 'action.dart';
import 'state.dart';

//注册组件
Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  Align buildRegisterText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('没有账号？'),
            GestureDetector(
              child: Text(
                '点击注册',
                style: TextStyle(color: Colors.green),
              ),
              onTap: () {
                //TODO 跳转到注册页面
                print('去注册');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  //第三方登录组件
  ButtonBar buildOtherMethod(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: state.loginMethod
          .map((item) => Builder(
                builder: (context) {
                  return IconButton(
                      icon: Icon(item['icon'], color: Theme.of(context).iconTheme.color),
                      onPressed: () {
                        //TODO : 第三方登录方法
                        Scaffold.of(context).showSnackBar(new SnackBar(
                          content: new Text("${item['title']}登录"),
                          action: new SnackBarAction(
                            label: "取消",
                            onPressed: () {},
                          ),
                        ));
                      });
                },
              ))
          .toList(),
    );
  }

  Align buildOtherLoginText() {
    return Align(
        alignment: Alignment.center,
        child: Text(
          '其他账号登录',
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ));
  }

  Align buildLoginButton(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 45.0,
        width: 270.0,
        child: RaisedButton(
          child: Text(
            'Login',
            style: Theme.of(context).primaryTextTheme.headline,
          ),
          color: Colors.black,
          onPressed: () {
            dispatch(LoginActionCreator.onLogin());//登录处理
          },
          shape: StadiumBorder(side: BorderSide()),
        ),
      ),
    );
  }

  //密码重置链接
  Padding buildForgetPasswordText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          child: Text(
            '忘记密码？',
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  //密码入力框
  TextFormField buildPasswordTextField(BuildContext context) {
    return TextFormField(
      controller: state.editCtrlPassword,
//      focusNode: state.focusNodePassword,
      onSaved: (String value) {
        state.password = value;
      },
      obscureText: state.isObscure,
      validator: (String value) {
        if (value.isEmpty) {
          return '请输入密码';
        }
      },
      decoration: InputDecoration(
          labelText: '密码',
          suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: state.eyeColor,
              ),
              onPressed: () {
                dispatch(LoginActionCreator.onObscurePassword());
              })),
    );
  }

  // 电子邮箱入力框
  TextFormField buildEmailTextField() {
    return TextFormField(
      controller: state.editCtrlEmail,
      decoration: InputDecoration(
        labelText: '电子邮箱',
      ),
      validator: (String value) {
        var emailReg = RegExp(
            r"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
        if (!emailReg.hasMatch(value)) {
          return '请输入正确的邮箱地址';
        }
      },
      onSaved: (String value) {
        state.email = value;
      },
    );
  }

  Padding buildTitleLine() {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, top: 4.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          color: Colors.black,
          width: 40.0,
          height: 2.0,
        ),
      ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '登录',
        style: TextStyle(fontSize: 42.0),
      ),
    );
  }

  return Stack(
    children: <Widget>[
      Offstage(
//        child: LoginPage(),
        child: Scaffold(
            body: Form(
                key: state.formKey,
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 22.0),
                  children: <Widget>[
                    SizedBox(
                      height: kToolbarHeight,
                    ),
                    buildTitle(),
                    buildTitleLine(),
                    SizedBox(height: 70.0),
                    buildEmailTextField(),
                    SizedBox(height: 30.0),
                    buildPasswordTextField(viewService.context),
                    buildForgetPasswordText(viewService.context),
                    SizedBox(height: 60.0),
                    buildLoginButton(viewService.context),
                    SizedBox(height: 30.0),
                    buildOtherLoginText(),
                    buildOtherMethod(viewService.context),
                    buildRegisterText(viewService.context),
                  ],
                ))),
        offstage: state.showAd,
      ),
      Offstage(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment(0.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: ScreenUtils.screenW(viewService.context) / 3,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(CommonConstants.ASSETS_IMAGES + 'home.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text(
                        '落花有意随流水,流水无心恋落花',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    viewService.buildComponent("count_down"), //倒计数
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            CommonConstants.ASSETS_IMAGES + 'ic_launcher.png',
                            width: 50.0,
                            height: 50.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Hi,豆芽',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
//          width: ScreenUtils.screenW(viewService.context),
//          height: ScreenUtils.screenH(viewService.context),
        ),
        offstage: !state.showAd,
      )
    ],
  );
}
