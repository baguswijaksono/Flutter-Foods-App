import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/navbar/favorite.dart';
import 'package:flutter_application_akhir/navbar/list.dart';
import 'package:flutter_application_akhir/navbar/user_profile.dart';
import 'package:flutter_application_akhir/pie.dart';
import 'package:flutter_application_akhir/screen/detail_Screen.dart';
import 'package:flutter_application_akhir/screen/signin.dart';
import 'package:flutter_application_akhir/src/china.dart';
import 'package:flutter_application_akhir/src/indonesia.dart';
import 'package:flutter_application_akhir/src/japan.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

//nulis kode disini
  @override
  Widget build(BuildContext context) {
    int _selectedIndex =0;
    double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
  
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
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
            child: GNav(
              tabBorderRadius: 12,
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Color.fromRGBO(83, 232, 139, 1.0),
              tabBackgroundColor: Color.fromRGBO(38, 54, 46, 1.0),
              padding: EdgeInsets.all(10),
              gap: 20,
              tabs: [
                GButton(icon: Icons.home,
                  text: 'Home',textStyle: TextStyle(color: Colors.white,),),
                GButton(icon: Icons.search_rounded,
                  text: 'Search',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage2()));}),
                GButton(icon: Icons.list_rounded,
                 text: 'List',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>list()));}),
                GButton(icon: Icons.favorite_rounded,
                text: 'Favourite',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>fav()));}),
                GButton(icon: Icons.person_rounded,
                text: 'Account',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>user()));}),                
            ],selectedIndex: _selectedIndex,
            onTabChange:(index){
              // ignore: unused_element
              setState(){
                _selectedIndex =index;
              }
            },),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
            
                    SizedBox(
                    height: dev_height-78,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(padding: const EdgeInsets.all(15.0),            
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    
    Text(
      "Temukan Makanan \nFavoritmu disini.",
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white),
    ),
  ],
),),
Padding(
  padding: const EdgeInsets.all(0.0),
  child:   GestureDetector(
                onTap:() {Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => detailScreen()));},
                                              child: ClipRRect(  
                              borderRadius: BorderRadius.circular(10),
                                      child: Stack(             
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                'images/Frame.png',height: 250,),
              ),              Container(
                alignment: Alignment.center,
                child: Image.asset(
                'images/Image.png',height: 250,),
              ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:8),
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
      "wkwkkwwwkkwkw.",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.black),
    ),
                        ),
                      ),                                     Padding(
                       padding: const EdgeInsets.all(15),
                       child: Container(
                        alignment: Alignment.centerRight,
                         child: SizedBox(
                          height: 40,
                          width: 110,
                           child: ElevatedButton(
      child: Text(
        "See More",
        style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(83, 232, 139, 1.0)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed))
          return Color.fromRGBO(37, 37, 37, 1.0); 
          return null
        ; // Defer to the widget's default.
      },
    ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            
          ),
        ),
      ),
      onPressed: () => null
    ),
                         ),
                       ),
                 ),
                    ],
                  ),
              
            ],
          ),
                              ),
  ),
),                    
            Padding(padding: const EdgeInsets.all(15.0),
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text(
      "Food Classify",
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
    ),
  GestureDetector(

              onTap:() {Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => detailScreen()));},
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text(
      "View More",
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.right,
      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),
    )
  ],
),
),
  ],
),
            ),
// nuslis interface disini
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
        
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(

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
),
  ),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => japan()));},

                                                child: ClipRRect(
                                
                                
                                borderRadius: BorderRadius.circular(10),
                                        child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                'images/jpn.jpg',
                ),
              ),
              Container(
                width: 210,
                  alignment: Alignment.center,
                  child: Text(
                      'Japanesse',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                      
                  ),),
            ],
          ),
                                ),

),
  ),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => chinese()));},

                                                child: ClipRRect(
                                
                                
                                borderRadius: BorderRadius.circular(10),
                                        child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                'images/chn.jpg',
                ),
              ),
              Container(
                width: 210,
                  alignment: Alignment.center,
                  child: Text(
                      'Chinesse',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                      
                  ),),
            ],
          ),
                                ),

),
  ),
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(

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
                'images/italy.jpg',
                ),
              ),
              Container(
                width: 210,
                  alignment: Alignment.center,
                  child: Text(
                      'Italyan',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                      
                  ),),
            ],
          ),
                                ),
),
  ),
    Padding(
    padding: const EdgeInsets.all(4.0),
    child: GestureDetector(

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
                'images/krn.jpg',
                ),
              ),
              Container(
                width: 210,
                  alignment: Alignment.center,
                  child: Text(
                      'Korean',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),
                      
                  ),),
            ],
          ),
                                ),
),
  ),
                            ],
                        ),
                      ),
                    ),      
    Padding(padding: const EdgeInsets.all(15.0),
            child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text(
      "Reccomendations",
      textAlign: TextAlign.left,
      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
    ),
  ],
),
),
                      ]
                      ),   
                    ),         //kotak scroll
          ],
          )
          
          ),
    );
  }
}
// ignore: must_be_immutable


