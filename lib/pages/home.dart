import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/bannercard.dart';
import 'package:flutter_application_akhir/components/botnavbar.dart';
import 'package:flutter_application_akhir/components/regioncard.dart';
import 'package:flutter_application_akhir/components/regionviewmore.dart';
import 'package:flutter_application_akhir/components/typecard.dart';

class homepagegweh extends StatefulWidget {
  const homepagegweh({super.key, required this.title});
  final String title;
  @override
  State<homepagegweh> createState() => _homepagegwehState();
}

class _homepagegwehState extends State<homepagegweh> {

//nulis kode disini
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    double dev_width = MediaQuery.of(context).size.width;//variabel buat nyari lebar device
    double dev_height = MediaQuery.of(context).size.height; //variabel buat nyari panjang device
    

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
            child: bottom_navigation_bar(numindex: 0,)
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch, 
          children: [ 
            
                    SizedBox(
                    height: dev_height-112,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(padding: const EdgeInsets.all(0.0),            
            child: Stack(
  //mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "Temukan Makanan \nFavoritmu disini.",       
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black),
          ),
        ),
      ],
    ),Align(
    alignment: Alignment.topRight,
      child: Image.asset("images/Pattern.png",height: 150,))
  ],
),),

Padding(
  padding: const EdgeInsets.all(0.0),
  child:   banner()
),                    
            Padding(padding: const EdgeInsets.all(15.0),
            child: region_view_more_text()
            ),
// nuslis interface disini
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                      height: 300,
                      child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (int i = 0; i < 5; i++)...[
                                      regioncard(imgurlnum: i, regnmsnum: i,regurlnum: i,)]
 ],
         ),
      ),
  ),      
    Padding(padding: const EdgeInsets.all(15.0),
            child: region_view_more_text()
),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                      height: 125,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (int i = 0; i < 3; i++)...[
                          typecard(imgurls: i, typnm: i, typeindex: i,)]
 ],
         ),
      ),
  ), 
      Padding(padding: const EdgeInsets.all(15.0),
            child: region_view_more_text()
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


