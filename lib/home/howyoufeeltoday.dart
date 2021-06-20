import 'package:flutter/material.dart';
import 'package:irfy_app/provider/feeling_provider.dart';
import 'package:provider/provider.dart';
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
    final _myFeeling = context.watch<UserFeeling>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        color: const Color(0xff3D73DD),
        elevation: 7,
        child: Container(
          height: 160,
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
                        blurRadius: _myFeeling.level == 1 ? 15.0 : 0.0,
                      ),
                    ]),
                    child: SizedBox(
                      child: IconButton(
                        iconSize: 76,
                        padding: EdgeInsets.all(0.0),
                        icon: Image.asset('assets/표정1@3x.png'),
                        onPressed: () {
                          setState(() {
                            _myFeeling.changefeeling(1);
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: _myFeeling.level == 2 ? 15.0 : 0.0,
                      ),
                    ]),
                    child: IconButton(
                      iconSize: 76,
                      padding: EdgeInsets.all(0.0),
                      icon: Image.asset('assets/표정2@3x.png'),
                      onPressed: () {
                        setState(() {
                          _myFeeling.changefeeling(2);
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: _myFeeling.level == 3 ? 15.0 : 0.0,
                      ),
                    ]),
                    child: IconButton(
                      iconSize: 76,
                      padding: EdgeInsets.all(0.0),
                      icon: Image.asset('assets/표정3@3x.png'),
                      onPressed: () {
                        setState(() {
                          _myFeeling.changefeeling(3);
                        });
                      },
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        blurRadius: _myFeeling.level == 4 ? 15.0 : 0.0,
                      ),
                    ]),
                    child: IconButton(
                      iconSize: 76,
                      padding: EdgeInsets.all(0.0),
                      icon: Image.asset('assets/표정4@3x.png'),
                      onPressed: () {
                        setState(() {
                          _myFeeling.changefeeling(4);
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
                _myFeeling.level == 0
                    ? "선택해주세요"
                    : _myFeeling.level == 1
                        ? "행복"
                        : _myFeeling.level == 2
                            ? "보통"
                            : _myFeeling.level == 3
                                ? "스트레스 쌓임"
                                : _myFeeling.level == 4
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
