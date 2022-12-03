import 'package:flutter/material.dart';
import '../src/indonesia.dart';

class typecard extends StatelessWidget {
  const typecard({super.key});

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
                'images/boil.jpg',
                fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 200,
                  alignment: Alignment.center,
                  child: Text(
                      'Boiled',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),                     
                  ),),
            ],
          ),
                                ),
);
  }
}