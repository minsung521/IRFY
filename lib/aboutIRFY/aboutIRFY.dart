import 'package:flutter/material.dart';

class AboutIRFY extends StatelessWidget {
  const AboutIRFY({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("This is settings"),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.info, color: Color(0xff757575)),
        ),
      ],
    );
  }
}
