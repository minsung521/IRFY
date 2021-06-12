import 'package:flutter/material.dart';
import 'myhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF2F5F8),
        primarySwatch: Colors.blue, 
        fontFamily: 'NotoSans',
        ),
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}