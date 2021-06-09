import 'package:flutter/material.dart';

class BuildAppBar extends StatefulWidget {
  const BuildAppBar({ Key key }) : super(key: key);
  @override
  _BuildAppBarState createState() => _BuildAppBarState();
}

class _BuildAppBarState extends State<BuildAppBar> {
  String saying = "너의 값진 말들로 희망을 노래하라";
  String byWho = "평가원";
  @override
  Widget build(BuildContext context) {
    return  PreferredSize(
      //appbarB.svg 이미지 삽입 예정
      child: AppBar(
        backgroundColor: Colors.green,
        
        elevation: 0.0,
        title: Text(
          saying + '   by.' + byWho,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      preferredSize: Size.fromHeight(100.0),
    );
  }
}

  
