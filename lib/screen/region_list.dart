import 'dart:convert';
import 'package:card_loading/card_loading.dart';
import 'package:flutter_application_akhir/screen/food_detail_screen.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class region_list extends StatelessWidget {
  const region_list({super.key, required this.specifyapiurl});
final String specifyapiurl;
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
            return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
  padding: const EdgeInsets.all(0),
  children: <Widget>[
    for (var i = 0; i < 5; i++)
GestureDetector(
onTap:() {Navigator.push(
context,
MaterialPageRoute(
builder: (context) => detail_screen(fdnm: snapshot.data[i]['fdnm'].toString(), desc: snapshot.data[i]['desc'].toString(), imgurl: snapshot.data[i]['imgurl'].toString())));},
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