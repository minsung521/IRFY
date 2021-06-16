import 'package:flutter/material.dart';
import 'myhome.dart';

class HowUFeelToday extends StatefulWidget {
  const HowUFeelToday({
    Key key,
  }) : super(key: key);

  @override
  _HowUFeelTodayState createState() => _HowUFeelTodayState();
}

class _HowUFeelTodayState extends State<HowUFeelToday> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
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
                  Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius:
                            MyHome.of(context).feeling == 1 ? 15.0 : 0.0,
                      ),
                    ]),
                    child: IconButton(
                      padding: EdgeInsets.all(0.0),
                      icon: Image.asset('assets/표정1@3x.png'),
                      onPressed: () {
                        setState(() {
                          MyHome.of(context).feeling = 1;
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius:
                            MyHome.of(context).feeling == 2 ? 15.0 : 0.0,
                      ),
                    ]),
                    child: IconButton(
                      padding: EdgeInsets.all(0.0),
                      icon: Image.asset('assets/표정2@3x.png'),
                      onPressed: () {
                        setState(() {
                          MyHome.of(context).feeling = 2;
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius:
                            MyHome.of(context).feeling == 3 ? 15.0 : 0.0,
                      ),
                    ]),
                    child: IconButton(
                      padding: EdgeInsets.all(0.0),
                      icon: Image.asset('assets/표정3@3x.png'),
                      onPressed: () {
                        setState(() {
                          MyHome.of(context).feeling = 3;
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius:
                            MyHome.of(context).feeling == 4 ? 15.0 : 0.0,
                      ),
                    ]),
                    child: IconButton(
                      padding: EdgeInsets.all(0.0),
                      icon: Image.asset('assets/표정4@3x.png'),
                      onPressed: () {
                        setState(() {
                          MyHome.of(context).feeling = 4;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                MyHome.of(context).feeling == 0
                    ? "선택해주세요"
                    : MyHome.of(context).feeling == 1
                        ? "행복"
                        : MyHome.of(context).feeling == 2
                            ? "보통"
                            : MyHome.of(context).feeling == 3
                                ? "스트레스"
                                : MyHome.of(context).feeling == 4
                                    ? "스트레스 푹푹"
                                    : "ERROR",
                style: TextStyle(
                  color: Color(0xffBDDEFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
