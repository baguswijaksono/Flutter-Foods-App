import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/src/indonesia.dart';

// ignore: must_be_immutable
class regioncard extends StatelessWidget {
  var imgurl;
  var regnm;

  regioncard({super.key,required this.imgurl,required this.regnm});

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
                imgurl,
                fit: BoxFit.fill,
                ),
              ),
              Container(
                width: 200,
                  alignment: Alignment.center,
                  child: Text(
                      regnm,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),                     
                  ),),
            ],
          ),
                                ),
);
  }
}