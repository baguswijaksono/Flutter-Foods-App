import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/main.dart';
import 'package:flutter_application_akhir/navbar/favorite.dart';
import 'package:flutter_application_akhir/navbar/list.dart';
import 'package:flutter_application_akhir/navbar/search.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class user extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        int _selectedIndex =4;
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
                  text: 'Home',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));}),
                GButton(icon: Icons.search_rounded,
                  text: 'Search',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>searchPage()));}),
                GButton(icon: Icons.list_rounded,
                 text: 'List',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>list()));}),
                GButton(icon: Icons.favorite_rounded,
                text: 'Favourite',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>fav()));}),
                GButton(icon: Icons.person_rounded,
                text: 'Account',textStyle: TextStyle(color: Colors.white,),),
                
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
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                          ///aa
                      ]
                      ),
                    )]
    ),));
  }
}