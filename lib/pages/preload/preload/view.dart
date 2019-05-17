import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'package:flutter_fish_demo/common/utils/screen_utils.dart';
import 'package:flutter_fish_demo/common/constants/common_contants.dart';
import 'package:flutter_fish_demo/pages/home/home/page.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(PreloadState state, Dispatch dispatch, ViewService viewService) {

  return Stack(
    children: <Widget>[
      Offstage(
        child: Container(
          color: Colors.white,
          child: Text(
            'dfdfd',
            style: TextStyle(decoration: TextDecoration.none)
          ),
        ),
//        offstage: state.showAd,
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
