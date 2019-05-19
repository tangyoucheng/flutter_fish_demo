import 'package:flutter/material.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_fish_demo/pages/home/home/page.dart';
import 'package:flutter_fish_demo/pages/login/login/page.dart';
import 'package:flutter_fish_demo/pages/person/persion/page.dart';
import 'package:flutter_fish_demo/pages/portal/portal/page.dart';
import 'package:flutter_fish_demo/pages/preload/preload/page.dart';

//做成门户页面
Widget createPortal() {
  final AbstractRoutes routes = HybridRoutes(routes: <AbstractRoutes>[
    PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        'preload': PreloadPage(), //预加载页面
        'portal': PortalPage(), //门户页面
        'login': LoginPage(), //登陆页面
        'home': HomePage(), //首页页面
        'person': PersonPage(), //登陆用户个人信息页面
      },
    ),
  ]);

  return MaterialApp(
    title: 'FishDemo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
//    home: routes.buildPage('preload', null),
    home: routes.buildPage('login', null),
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
