import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHome extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

// class Quote {
//   String saying;

//   Quote(String saying) {
//     this.saying = saying;
//   }
// }

class CarouselElement {
  String text;
}

class _HomeState extends State<MyHome> {
  String saying = "너의 값진 말들로 희망을 노래하라";

  final mTitleSize = 22.0;

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
            decoration: BoxDecoration(),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "IRFY",
                  style: TextStyle(
                    color: const Color(0xff265ABF),
                    fontWeight: FontWeight.bold,
                    fontSize: 55,
                  ),
                ),
                Text(
                  "I'm Ready For You",
                  style: TextStyle(
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
                style: TextStyle(
                  color: Colors.black,
                  fontSize: mTitleSize,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Card(
            child: ListTile(
              tileColor: const Color(0xffF2F5F8),
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
            elevation: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Text(
              '당신의 오늘 스트레스 지수',
              style: TextStyle(
                color: Colors.black,
                fontSize: mTitleSize,
                letterSpacing: -1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              color: const Color(0xff3D73DD),
              elevation: 7,
              child: Container(
                height: 140,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          padding: EdgeInsets.all(0.0),
                          icon: Image.asset('assets/표정1@3x.png'),
                          onPressed: () {},
                        ),
                        IconButton(
                          padding: EdgeInsets.all(0.0),
                          icon: Image.asset('assets/표정2@3x.png'),
                          onPressed: () {},
                        ),
                        IconButton(
                          padding: EdgeInsets.all(0.0),
                          icon: Image.asset('assets/표정3@3x.png'),
                          onPressed: () {},
                        ),
                        IconButton(
                          padding: EdgeInsets.all(0.0),
                          icon: Image.asset('assets/표정4@3x.png'),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "선택해주세요",
                      style: TextStyle(
                        color: Color(0xffBDDEFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
            child: Text('당신을 위해서 준비했어요',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: mTitleSize,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Container(
            color: Color(0xffE9EDF1),
            height: 360,
            child: CarouselSlider(
              options: CarouselOptions(height: 330),
              // onPageChanged : (i){
              //   setState(() {
              //     _current = i;
              //   });
              // },

              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 12.0),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(const Radius.circular(24)),
                          color: const Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0, 3),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                "지금 당신을 텐션 업! 해줄 노래 추천",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                image: AssetImage("assets/hangup.jpg"),
                                width: 160,
                                height: 160,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "퇴사 ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('- Anonymous Artist'),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff3D73DD),
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text("플레이 리스트 더보기")),
                            ),
                          ],
                        ));
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
