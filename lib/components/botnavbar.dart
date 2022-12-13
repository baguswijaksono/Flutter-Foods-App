// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/pages/favorite.dart';
import 'package:flutter_application_akhir/pages/home.dart';
import 'package:flutter_application_akhir/pages/list.dart';
import 'package:flutter_application_akhir/pages/user_profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottom_navigation_bar extends StatelessWidget {
var numindex;

   bottom_navigation_bar({super.key, required this.numindex});

  @override
  Widget build(BuildContext context) {
    return GNav(
              tabBorderRadius: 12,
              backgroundColor: Colors.transparent,
              color: Colors.white,
              activeColor: Color.fromRGBO(83, 232, 139, 1.0),
              tabBackgroundColor: Color.fromRGBO(38, 54, 46, 1.0),
              padding: EdgeInsets.all(10),
              gap: 20,
              tabs: [
                GButton(icon: Icons.home,
                  text: 'Home',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>homepagegweh()));}),
                GButton(icon: Icons.list_rounded,
                 text: 'List',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>list(),));}),
                GButton(icon: Icons.favorite_rounded,
                text: 'Favourite',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>fav()));}),
                GButton(icon: Icons.person_rounded,
                text: 'Account',textStyle: TextStyle(color: Colors.white,),onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>user()));}),                
            ],selectedIndex: numindex,
            onTabChange:(index){
              // ignore: unused_element
              setState(){
                numindex =index;
              }
            },);
  }
}