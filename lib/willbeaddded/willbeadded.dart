import 'package:flutter/material.dart';
import 'package:irfy_app/home/myhome.dart';
import 'package:irfy_app/main.dart';
import 'package:irfy_app/music/musichome.dart';

class WillBeAdded extends StatelessWidget {
  const WillBeAdded({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "추가될",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w900,
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    " 기능",
                    style: TextStyle(
                      color: Color(0xff3D73DD),
                      fontWeight: FontWeight.w900,
                      fontSize: 50,
                    ),
                  ),
                  Text(
                    "들",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w900,
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
              Text(
                "IRFY - I'm Ready For You",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  letterSpacing: -1,
                ),
              ),
              SizedBox(
                height: 28,
              ),
            ],
          ),
          Exit(),
        ],
      ),
    );
  }
}
