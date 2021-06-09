import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHome extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<MyHome> {
  String saying = "너의 값진 말들로 희망을 노래하라";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   child: AppBar(//AppBar 위젯에 appbarB.svg 이미지 삽입
      //     backgroundColor: Colors.transparent,
      //     centerTitle: true,
      //     shadowColor: const Color(0xffD5E7FF),
      //     elevation: 1,
      //     title: Column(
      //       children: [
      //         SizedBox(
      //           height: 50,
      //         ),
      //         Text(
      //           "IRFY",
      //           style:  TextStyle(
      //               color: Colors.black,
      //               fontWeight: FontWeight.bold,
      //               fontSize: 50,
      //             ),
      //           textAlign: TextAlign.right,
      //         ),
      //         Text(
      //           "IRFY",
      //           style:  TextStyle(
      //               color: Colors.black
      //             ),
      //           textAlign: TextAlign.right,
      //         ),
      //       ],
      //     ),
      //   ),
      //   preferredSize: Size.fromHeight(120.0),
      // ),
      body: ListView(
        // padding: EdgeInsets.all(20),
        children: [
          Container(
          //   backgroundColor: Colors.transparent,
          // centerTitle: true,
          // shadowColor: const Color(0xffD5E7FF),
          // elevation: 1,
          decoration: BoxDecoration(
            
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "IRFY",
                style:  TextStyle(
                    color: const Color(0xff265ABF),
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                  ),
              ),
              Text(
                "I'm Ready For You",
                style:  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: -1,
                  ),
              ),
            ],
          ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 15),
            child: Text('오늘의 응원 한마디',
            style : TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
              )
            ),
          ), 
          Card(
            
            child: ListTile(
              title: Text( 
                '"$saying"',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 15),
            child: Text('당신의 오늘 스트레스 지수',
            style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
                ),
              
            ),
          ),  
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            elevation: 5,
            child: ListTile(
              
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 30),
            child: Text('당신을 위해서 준비했어요',
            style : TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
              )
            ),
          ),  
          CarouselSlider(
              options: CarouselOptions(height: 330.0),
              items: [1,2,3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(24),
                          bottomRight: const Radius.circular(24),
                          topLeft: const Radius.circular(24),
                          topRight: const Radius.circular(24),
                        ),
                        boxShadow :[
                          BoxShadow(
                            color: Colors.green,
                            blurRadius: 0.0,
                          )
                        ],
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

