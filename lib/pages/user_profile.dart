import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/botnavbar.dart';
import 'package:flutter_application_akhir/components/calorieschart.dart';
import 'package:flutter_application_akhir/components/profile_header.dart';

class user extends StatelessWidget {
  const user({super.key});

  @override
  Widget build(BuildContext context) {
   // double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Container(
          decoration: BoxDecoration(                                                   
    borderRadius:BorderRadius.circular(15),            
    boxShadow: [                                                               
        BoxShadow(color: Color.fromRGBO(37, 37, 37, 1.0),),       
    ],                                                                         
  ),     
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:12, vertical: 12 ),//padding container  bottom navbar
            child: bottom_navigation_bar(numindex: 3,)
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
            page(),
            SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: BarChartSample2(),
              ),
            )
                //kotak scroll
          ],
          )
          ),
    );
  }
}