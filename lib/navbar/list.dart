import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/main.dart';
import 'package:flutter_application_akhir/navbar/favorite.dart';
import 'package:flutter_application_akhir/navbar/search.dart';
import 'package:flutter_application_akhir/navbar/user_profile.dart';
import 'package:flutter_application_akhir/src/japan.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class list extends StatelessWidget{
  int _selectedIndex =2;
  
  @override
  Widget build(BuildContext context) {
        double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
     double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    return Scaffold(backgroundColor: Color.fromRGBO(13, 13, 13, 1.0),
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
                 text: 'List',textStyle: TextStyle(color: Colors.white,),),
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
                    width: dev_width,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                      Row(
                        children: [
                          Padding(
    padding: const EdgeInsets.all(4),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => japan()));},

                                                    child: ClipRRect(
                                    
                                    
                                    borderRadius: BorderRadius.circular(12),
                                            child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Image.network(
                'https://cf.shopee.co.id/file/7cffeac9f9326369f87ab3b84ebe2853',width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                ),
              ),
              Container(
                width: (dev_width/2)-8 ,height: (dev_width/2)-8,
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
    padding: const EdgeInsets.only(top: 4,bottom: 4,right: 3),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => japan()));},

                                                    child: ClipRRect(
                                    
                                    
                                    borderRadius: BorderRadius.circular(12),
                                            child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Image.network(
                'https://cf.shopee.co.id/file/7cffeac9f9326369f87ab3b84ebe2853',width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                ),
              ),
              Container(
                width: (dev_width/2)-8 ,height: (dev_width/2)-8,
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
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
    padding: const EdgeInsets.only(left: 4,bottom: 4,right: 4),
    child: GestureDetector(

                onTap:() {Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => japan()));},

                                                    child: ClipRRect(
                                    
                                    
                                    borderRadius: BorderRadius.circular(12),
                                            child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Image.network(
                'https://cf.shopee.co.id/file/7cffeac9f9326369f87ab3b84ebe2853',width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                ),
              ),
              Container(
                width: (dev_width/2)-8 ,height: (dev_width/2)-8,
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
    padding: const EdgeInsets.only(bottom: 4,right: 3),
    child: GestureDetector(
                onTap:() {Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => japan()));},
                                                    child: ClipRRect(                        
                                    borderRadius: BorderRadius.circular(12),
                                            child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Image.network(
                'https://cf.shopee.co.id/file/7cffeac9f9326369f87ab3b84ebe2853',width: (dev_width/2)-8 ,height: (dev_width/2)-8,
                ),
              ),
              Container(
                width: (dev_width/2)-8 ,height: (dev_width/2)-8,
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
                        ],
                      ),
                      ]
                      ),  
                    ),     //kotak scroll
          ],
          )),
    );
  }
}