import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/src/indonesia.dart';

class food_page_list extends StatelessWidget {
  const food_page_list({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

                onTap:() {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => indonesian()));},
                                                child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                        child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                'images/ina.jpg',
                fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 200,
                  alignment: Alignment.center,
                  child: Text(
                      'Indonesian',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),                     
                  ),),
            ],
          ),
                                ),
);
  }
}