import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(CountDownState state, Dispatch dispatch, ViewService viewService) {
  return GestureDetector(
    child: Align(
      alignment: Alignment(1.0, 0.0),
      child: Container(
        margin: const EdgeInsets.only(right: 30.0, top: 20.0),
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
        child: Text(
          '${state.seconds}',
          style: TextStyle(fontSize: 17.0, decoration: TextDecoration.none),
        ),
        decoration: BoxDecoration(
          color: Color(0xffEDEDED),
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    ),
    onTap: () {
      dispatch(CountDownActionCreator.cancelTimer(state));
    },
  );
}
