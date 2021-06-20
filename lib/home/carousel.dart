import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:irfy_app/provider/feeling_provider.dart';
import 'package:provider/provider.dart';
import 'myhome.dart';

class HorizontalSlider extends StatefulWidget {
  const HorizontalSlider({
    Key key,
  }) : super(key: key);

  @override
  _HorizontalSliderState createState() => _HorizontalSliderState();
}

class _HorizontalSliderState extends State<HorizontalSlider> {
  @override
  Widget build(BuildContext context) {
    final _myFeeling = context.watch<UserFeeling>();
    return Container(
      color: Color(0xffE9EDF1),
      height: 360,
      child: CarouselSlider(
        options: CarouselOptions(height: 330),
        items: (_myFeeling.level == 0
                ? MyHome.of(context).elementsListDefault
                : _myFeeling.level == 1
                    ? MyHome.of(context).happy
                    : _myFeeling.level == 2
                        ? MyHome.of(context).notbad
                        : _myFeeling.level == 3
                            ? MyHome.of(context).stress
                            : MyHome.of(context).stressfull)
            .map((elements) {
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
                            "${elements.name} - ",
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
                        onPressed: () {
                          elements.onClick(context);
                        }, //fixed
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
