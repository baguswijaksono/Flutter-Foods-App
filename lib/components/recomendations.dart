import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/src/indonesia.dart';

class recomendations extends StatelessWidget {
  const recomendations({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap:() {Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => indonesian()));},
                                                  child: ClipRRect(
                                          child: Stack(
              children: <Widget>[
                Container(
                  height: 140,
                  alignment: Alignment.centerLeft,
                  child: Image.network(
                  'https://hips.hearstapps.com/hmg-prod/images/delish-202210-soupdumplings-205-2-1665605391.jpg?crop=0.6666666666666666xw:1xh;center,top&resize=640:*',
                  fit: BoxFit.fill,
                  ),
                ),
                  Container(
                    height: 140,
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                  'images/layer.png',
                  fit: BoxFit.fill,
                  ),
                ),
                Container(
                    height: 140,
                    alignment: Alignment.centerLeft,
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