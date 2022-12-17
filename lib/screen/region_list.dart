import 'dart:convert';
import 'package:card_loading/card_loading.dart';
import 'package:flutter_application_akhir/components/backbutton.dart';
import 'package:flutter_application_akhir/screen/food_detail_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class region_list extends StatelessWidget {
  const region_list({super.key, required this.specifyapiurl, required this.regionname});
final String specifyapiurl;
final String regionname;
    Future<List<dynamic>> _fecthListQuotes() async {
    final result = await http.get(Uri.parse(specifyapiurl));
    return json.decode(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
        future: _fecthListQuotes(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {

          if (snapshot.hasData) {
                        var d=snapshot.data.length ;
            return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
  padding: const EdgeInsets.all(0),
  children: <Widget>[
    SizedBox(
      
      height: 250,
      child: Stack(
  children: <Widget>[
    backarrow(),
    Column(
      children: [
        Container(
padding: EdgeInsets.only(top: 80),
alignment: Alignment.center,
child: Text('MAKANAN DAERAH',style: TextStyle(color: Colors.black,fontFamily: 'Raleway',fontSize: 30), 
),),
    Container(
alignment: Alignment.center,
child: Text('dari',
style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12.0, ), 
),),
    Container(
alignment: Alignment.center,
child: Text(regionname,
style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30.0, ), 
),)
      ],
    ),
  ],
)

    ),
  
    for (var i = 0; d < 5; i++)
    
    GestureDetector(
onTap:() {Navigator.push(
context,
MaterialPageRoute(
builder: (context) => detail_screen(fdnm: snapshot.data[i]['fdnm'].toString(), desc: snapshot.data[i]['desc'].toString(), imgurl: snapshot.data[i]['imgurl'].toString(), kal: snapshot.data[i]['Kalori'], lmk: snapshot.data[i]['Lemak'], prtn: snapshot.data[i]['Protein'], vit: snapshot.data[i]['Vitamin'], bhn: [],)));},
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