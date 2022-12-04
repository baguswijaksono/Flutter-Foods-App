import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/src/indonesia.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class regioncard extends StatelessWidget {
  var imgurlnum;
  var regnmsnum;
  final String regapiUrl = "https://api.jsonbin.io/v3/b/638ce0bca3c728450edf79ab?meta=false";
    Future<List<dynamic>> _fecthListQuotes() async {
    final result = await http.get(Uri.parse(regapiUrl));
    return json.decode(result.body);
  }

  regioncard({super.key,required this.imgurlnum,required this.regnmsnum,});
  @override
  Widget build(BuildContext context) {
    

    return FutureBuilder<List<dynamic>>(
        future: _fecthListQuotes(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
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
                  child: Image.network(snapshot.data[imgurlnum]['imgurl'].toString(),
                  fit: BoxFit.fill,)
                ),
                Container(alignment: Alignment.center,
                child: Image.asset('images/dark.png',
                fit: BoxFit.fill,),),
                Container(
                  width: 200,
                    alignment: Alignment.center,
                    child: Text(
                snapshot.data[regnmsnum]['rgnm'].toString(),
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0, ),                     
                    ),),
              ],
          ),
                                  ),
),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      );
      
  }
}