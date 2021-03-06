import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:irfy_app/provider/feeling_provider.dart';
import 'package:irfy_app/settings/settings.dart';
import 'package:irfy_app/webtoon/webtoonhome.dart';
import 'package:provider/provider.dart';
import 'aboutIRFY/aboutIRFY.dart';
import 'home/myhome.dart';
import 'music/musichome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/music': (context) => MusicHome(),
        '/webtoon': (context) => WebtoonHome(),
        '/about': (context) => AboutIRFY(),
        '/settings': (context) => Settings(),
      },
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffF2F5F8),
          fontFamily: 'NotoSans CJK KR',
          primaryColor: Color(0xff3D73DD)),
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (BuildContext context) => UserFeeling(),
        child: MyHome(),
      ),
      // home: Navigator(
      //   pages: [
      //     MaterialPage(
      //       key: ValueKey(MyHome.pageName),
      //       child: MyHome(),
      //     ),
      //     if (currentPage == AuthPage.pageName) AuthPage(),
      //   ],
      //   onPopPage: (route, result) {
      //     if (!route.didPop(result)) {
      //       return false;
      //     }
      //     return true;
      //   },
      // ),
    );
  }
}
