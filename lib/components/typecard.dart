import 'package:flutter/material.dart';
import '../src/indonesia.dart';

// ignore: must_be_immutable
class typecard extends StatelessWidget {
   typecard({super.key, required this.imgurls , required this.typnm,});
  var imgurls;
  var typnm;

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
                imgurls,
                fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 200,
                  alignment: Alignment.center,
                  child: Text(
                      typnm,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),                     
                  ),),
            ],
          ),
                                ),
);
  }
}