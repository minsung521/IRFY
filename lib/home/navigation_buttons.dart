import 'package:flutter/material.dart';
import 'package:irfy_app/aboutIRFY/aboutIRFY.dart';
import 'package:irfy_app/settings/settings.dart';

import 'package:irfy_app/willbeaddded/willbeadded.dart';

class NavigationBtns extends StatefulWidget {
  const NavigationBtns({
    Key key,
  }) : super(key: key);

  @override
  _NavigationBtnsState createState() => _NavigationBtnsState();
}

class _NavigationBtnsState extends State<NavigationBtns> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 8,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Settings()));
            },
            child: Icon(Icons.settings, color: Color(0xff757575)),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              primary: Color(0xffE9EDF1), // <-- Button color
              onPrimary: Colors.blue, // <-- Splash color
              elevation: 10,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutIRFY()));
            },
            child: Icon(Icons.help, color: Color(0xff757575)),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              primary: Color(0xffE9EDF1), // <-- Button color
              onPrimary: Colors.blue, // <-- Splash color
              elevation: 10, // <-- Splash color
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => WillBeAdded()));
            },
            child: Icon(Icons.info, color: Color(0xff757575)),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              primary: Color(0xffE9EDF1), // <-- Button color
              onPrimary: Colors.blue, // <-- Splash color
              elevation: 10,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text('공유기능은 앱 출시 후에!'),
                  titleTextStyle: TextStyle(
                    fontSize: 20,
                    color: Color(0xff3D73DD),
                  ),
                  content: Text('IRFY는 IOS/ANDROID 모두 출시 예정입니다'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "네!",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Icon(Icons.ios_share, color: Color(0xff757575)),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              primary: Color(0xffE9EDF1), // <-- Button color
              onPrimary: Colors.blue, // <-- Splash color
              elevation: 10,
            ),
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
    );
  }
}
