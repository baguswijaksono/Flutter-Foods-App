import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/botnavbar.dart';
import 'package:flutter_application_akhir/components/regionviewmore.dart';

class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
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
      body: ListView
            (
              children: <Widget>[
                          region_view_more_text(clasifier: 'Wesst Java'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                height: 200,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/westjava.png',height: 220220,width: 975, ),
              ),
                          ),  
                                    Padding(
              padding:
                  const EdgeInsets.all(8),
              child: Container(
                child: Text(
                  "Thave 11 years commercial experience providing front-end development, producing responsive websites and exceptional user experience.",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
                      region_view_more_text(clasifier: 'Wesst Java'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                height: 200,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/centraljava.png',height: 220220,width: 975, ),
              ),
                          ),  
                                    Padding(
              padding:
                  const EdgeInsets.all(8),
              child: Container(
                child: Text(
                  "Thave 11 years commercial experience providing front-end development, producing responsive websites and exceptional user experience.",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
                      region_view_more_text(clasifier: 'Wesst Java'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                height: 200,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/eastjava.png',height: 220220,width: 975, ),
              ),
                          ),  
                                    Padding(
              padding:
                  const EdgeInsets.all(8),
              child: Container(
                child: Text(
                  "Thave 11 years commercial experience providing front-end development, producing responsive websites and exceptional user experience.",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
                                 Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                height: 200,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/bali.png',height: 220220,width: 975, ),
              ),
                          ),  
                                    Padding(
              padding:
                  const EdgeInsets.all(8),
              child: Container(
                child: Text(
                  "Thave 11 years commercial experience providing front-end development, producing responsive websites and exceptional user experience.",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ), 
              ]

            ) ,   

      );
  }
}