import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHome extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyHome> {
  String saying = "너의 값진 말들로 희망을 노래하라";
  String byWho = "평가원";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(//AppBar 위젯에 appbarB.svg 이미지 삽입
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 0.0,
          title: Text(
            saying + '\nby.' +byWho,
            style: GoogleFonts.nanumPenScript(
              textStyle : TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            )
          ),
        ),
        preferredSize: Size.fromHeight(100.0),
      ),
      body: ListView(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 10,
            child: ListTile(
              
            ),
          ),
          CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                      color: Colors.amber
                      ),
                      child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
            )
        ],
      ),
    );
  }
}

