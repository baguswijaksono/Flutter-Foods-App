import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/modified_vertical_card.dart';


class vertical extends StatefulWidget {
  @override
  _verticalState createState() => _verticalState();
}

class _verticalState extends State<vertical> {
  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "RED \n 9.10 AM",
      "YELLOW",
      "BLACK",
      "CYAN",
      "BLUE",
      "GREY",
    ];

    final List<String> desc = [
      "RED \n 9.10 AM",
      "YELLOW",
      "BLACK",
      "CYAN",
      "BLUE",
      "GREY",
    ];

    final List<Widget> images = [
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.black,
      ),
      Container(
        color: Colors.cyan,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.grey,
      ),
    ];
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: VerticalCardPager(
                  textStyle: TextStyle(
                      color: Colors.white,),
                  titles: titles,
                  desc: desc,
                  images: images,
                  onPageChanged: (page) {},
                  align: ALIGN.CENTER,
                  onSelectedItem: (index) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}