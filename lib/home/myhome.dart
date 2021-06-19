import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:irfy_app/community/comunity.dart';
import 'package:irfy_app/music/musichome.dart';
import 'package:irfy_app/webtoon/webtoonhome.dart';
import 'howyoufeeltoday.dart';
import 'navigation_buttons.dart';
import 'title.dart';

class CarouselE {
  String eType;
  String title;
  String imageName;
  String explanation;
  String name;
  String btnText;
  Widget targetPg;
  Function onClick;

  CarouselE({
    @required String eType,
    @required String title,
    @required String imageName,
    @required String explanation,
    @required String name,
    @required String btnText,
    @required Widget targetPg,
    @required Function onClick,
  }) {
    this.eType = eType;
    this.title = title;
    this.imageName = imageName;
    this.explanation = explanation;
    this.name = name;
    this.btnText = btnText;
    this.targetPg = targetPg;
    this.onClick = onClick;
  }
}

List<CarouselE> elementsList = [
  CarouselE(
    eType: "music",
    title: "지친 당신을 텐션업! 해줄 노래 추천",
    imageName: "hangup.jpg",
    explanation: "Anonymous Artist",
    name: "퇴사",
    btnText: "플레이 리스트 더보기",
    targetPg: MusicHome(),
    onClick: (BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => MusicHome()),
      );
    },
  ),
  CarouselE(
    eType: "cartoon",
    title: "야 너네 직장두? 야 우리 직장두!",
    imageName: "samplewebtoon.jpg",
    explanation: "부담스러워요",
    name: "5화",
    btnText: "웹툰 홈 바로가기",
    targetPg: WebtoonHome(),
    onClick: (context) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => WebtoonHome()),
      );
    },
  ),
];

String saying = "너의 값진 말들로 희망을 노래하라";

class MyHome extends StatefulWidget {
  static final String pageName = "MyHome";

  @override
  _HomeState createState() => _HomeState();

  static _HomeState of(BuildContext context) =>
      context.findAncestorStateOfType<_HomeState>();
}

class _HomeState extends State<MyHome> {
  final mTitleSize = 26.0;

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  int feeling = 0;
  int userAge = 30;
  String userName = "홍길동";
  String userWorkIn = "서비스직";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Column(
              children: [
                AppBarTitle(),
                NavigationBtns(),
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
          HowUFeelToday(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 20),
            child: Text(
              '당신을 위해서 준비했어요',
              style: TextStyle(
                color: Colors.black,
                fontSize: mTitleSize,
                letterSpacing: -1,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          HorizontalSlider(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 15),
            child: Text('모여봐요 직장인들의 숲',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: mTitleSize,
                  letterSpacing: -1,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 7,
              child: Container(
                height: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: 340,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffE9EDF1),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 32,
                              width: 308,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Color(0xffC8D3DD),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
                            child: Container(
                              height: 24,
                              width: 284,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Color(0xffC8D3DD),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
                            child: Container(
                              height: 24,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Color(0xffC8D3DD),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
                            child: Container(
                              height: 24,
                              width: 260,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Color(0xffC8D3DD),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
                            child: Container(
                              height: 24,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Color(0xffC8D3DD),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: 340,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff3D73DD),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CommunityWebview()));
                        },
                        child: Text(
                          "직장인 커뮤티니 바로가기",
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: -1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HorizontalSlider extends StatelessWidget {
  const HorizontalSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE9EDF1),
      height: 360,
      child: CarouselSlider(
        options: CarouselOptions(height: 330),
        items: elementsList.map((elements) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(24)),
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
                        elements.title,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: AssetImage("assets/${elements.imageName}"),
                        width: 160,
                        height: 160,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            elements.name + " - ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(elements.explanation)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 252,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff3D73DD),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () => elements.onClick(context), //fixed
                        child: Text(
                          elements.btnText,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
