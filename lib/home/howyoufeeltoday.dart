import 'package:flutter/material.dart';

class HowUFeelToday extends StatelessWidget {
  const HowUFeelToday({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
