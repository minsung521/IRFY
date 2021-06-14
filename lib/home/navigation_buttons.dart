import 'package:flutter/material.dart';
import 'package:irfy_app/aboutIRFY/aboutIRFY.dart';
import 'package:irfy_app/help/help.dart';
import 'package:irfy_app/settings/settings.dart';

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
                  .push(MaterialPageRoute(builder: (context) => help()));
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
                  .push(MaterialPageRoute(builder: (context) => AboutIRFY()));
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
            onPressed: () {},
            child: Icon(Icons.ios_share, color: Color(0xff757575)),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              primary: Color(0xffE9EDF1), // <-- Button color
              onPrimary: Colors.blue, // <-- Splash color
              elevation: 10,
            ),
          ),
        ],
      ),
    );
  }
}
