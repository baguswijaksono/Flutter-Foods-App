import 'package:flutter/material.dart';

class japan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
            body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
                    SizedBox(
                       height: dev_height-78,
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                      ]
                      ),
                    )]
    ),));
  }
}