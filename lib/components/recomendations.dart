import 'dart:convert';
import 'package:flutter_application_akhir/pages/home.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class recomendations extends StatelessWidget {
  var indeximg;
  
  var indextxt;

 recomendations({super.key,required this.indeximg, required this.indextxt});
    final String regapiUrl = "https://api.jsonbin.io/v3/b/638d5f5ea3c728450edfcf1c?meta=false";
    Future<List<dynamic>> _fecthListQuotes() async {
    final result = await http.get(Uri.parse(regapiUrl));
    return json.decode(result.body);
  }

  @override
  Widget build(BuildContext context) {
     
    return FutureBuilder<List<dynamic>>(
        future: _fecthListQuotes(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(0),
              child:     GestureDetector(
                  onTap:() {Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => homepagegweh(title: '1',)));},
                                                  child: ClipRRect(
                                          child: Stack(
              children: <Widget>[
                Container(
                  height: 160,
                  alignment: Alignment.center,
                  child: Image.network(snapshot.data[indeximg]['imgurl'].toString(),fit: BoxFit.fill,
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
                          snapshot.data[indextxt]['fdnm'].toString(),
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),                     
                      ),),
              ],
            ),
                                  ),
)
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      );
    
    
    

  }
}