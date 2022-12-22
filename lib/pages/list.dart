import 'dart:convert';

import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../components/botnavbar.dart';
import '../screen/food_detail_screen.dart';
// ignore: must_be_immutable
class list extends StatelessWidget {
  list({super.key});
  var allapi='https://api.jsonbin.io/v3/b/6392030fc5b3a64f1bc6ab28?meta=false';
      Future<List<dynamic>> _fecthListQuotes() async {
    final result = await http.get(Uri.parse(allapi));
    return json.decode(result.body);
  }
  @override
  Widget build(BuildContext context) {
    double dev_width = MediaQuery.of(context).size.width;
    return FutureBuilder<List<dynamic>>(
        future: _fecthListQuotes(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            var d=snapshot.data.length ;
            return Scaffold(     
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
            child: bottom_navigation_bar(numindex: 1,)
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: ListView(
  padding: EdgeInsets.all(0),
  children: <Widget>[
    for (var i = 0; i < d; i++)
    GestureDetector(
onTap:() {Navigator.push(
context,
MaterialPageRoute(
builder: (context) => detail_screen(fdnm: snapshot.data[i]['fdnm'].toString(),
                                   desc: snapshot.data[i]['desc'].toString(), 
                                  imgurl: snapshot.data[i]['imgurl'].toString(), 
                                  kal: snapshot.data[i]['Kalori'], 
                                  lmk: snapshot.data[i]['Lemak'], 
                                  prtn: snapshot.data[i]['Protein'], 
                                  vit: snapshot.data[i]['Karbohidrat'], 
                                  b1: snapshot.data[i]['bahan1'],
                                  b2: snapshot.data[i]['bahan2'],
                                  b3: snapshot.data[i]['bahan3'], 
                                  b4: snapshot.data[i]['bahan4'], 
                                  imgurl2: snapshot.data[i]['imgurl2'], 
                                  l1: snapshot.data[i]['langkah1'], 
                                  l2: snapshot.data[i]['langkah2'], 
                                  l3: snapshot.data[i]['langkah3'], 
                                  l4: snapshot.data[i]['langkah4'], 
                                  b5: snapshot.data[i]['bahan5'], 
                                  b6: snapshot.data[i]['bahan6'],)));},
child: ClipRRect(
child: Stack(
children: [
Container(
height: 160,
width: dev_width,
alignment: Alignment.center,
child: Image.network(snapshot.data[i]['imgurl'].toString(),fit: BoxFit.fill,
)
),
Container(
height: 160,
alignment: Alignment.center,
child: Image.asset(
'images/region_dark.png',
fit: BoxFit.fill,
),
),
Container(
height: 160,
alignment: Alignment.center,
child: Text(
snapshot.data[i]['fdnm'].toString(),
style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ), 
),),
],
),
),
)
  ],
)     
          );
          } else {
            return CardLoading(
  height: 300,
  borderRadius: BorderRadius.all(Radius.circular(10)),
  margin: EdgeInsets.only(bottom: 10),
);
          }
        },
      );
  }
}