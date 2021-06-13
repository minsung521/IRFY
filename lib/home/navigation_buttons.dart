import 'package:flutter/material.dart';

class NavigationBtns extends StatelessWidget {
  const NavigationBtns({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
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
            onPressed: () {},
            child: Icon(Icons.question_answer, color: Color(0xff757575)),
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(20),
              primary: Color(0xffE9EDF1), // <-- Button color
              onPrimary: Colors.blue, // <-- Splash color
              elevation: 10, // <-- Splash color
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.help, color: Color(0xff757575)),
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
            child: Icon(Icons.share, color: Color(0xff757575)),
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
