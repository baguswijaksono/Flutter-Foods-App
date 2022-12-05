import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/botnavbar.dart';
import 'package:flutter_application_akhir/components/recomendations.dart';

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: bottom_navigation_bar(numindex: 2,)
          ),
        ),
      ),
      body: ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    for (var i = 0; i < 5; i++)
recomendations(indeximg: i, indextxt: i,)
  ],
)
          
          );
    
  }
}