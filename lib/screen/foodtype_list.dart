// ignore_for_file: must_be_immutable

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/screen/food_detail_screen.dart';

class foodtype extends StatelessWidget {
   foodtype({super.key, required this.allpirul,required this.typeindex});
  final String allpirul;
    final int typeindex;
    var arr = ['goreng','berkuah','nonkuah'];
      Future<List<dynamic>> _fecthListQuotes() async {
    final result = await http.get(Uri.parse(allpirul));
    return json.decode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
        future: _fecthListQuotes(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
  padding: const EdgeInsets.all(0),
  children: <Widget>[
for (var i = 0; i < 20; i++)
if (snapshot.data[i]['type'].toString()==arr[typeindex])
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
                                  b6: snapshot.data[i]['bahan6'])));},
child: ClipRRect(
child: Stack(
children: [
Container(
height: 160,
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