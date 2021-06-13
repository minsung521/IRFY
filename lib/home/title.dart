import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
