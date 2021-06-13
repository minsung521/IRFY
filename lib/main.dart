import 'package:flutter/material.dart';
import 'home/myhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffF2F5F8),
          fontFamily: 'NotoSans CJK KR',
          primaryColor: Color(0xff3D73DD)),
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
