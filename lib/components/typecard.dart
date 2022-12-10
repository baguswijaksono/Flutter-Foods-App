import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/screen/foodtype_list.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class typecard extends StatelessWidget {
   typecard({super.key, required this.imgurls , required this.typnm,required this.typeindex});
  var imgurls;
  var typnm;
  final int typeindex;
    final String regapiUrl = "https://api.jsonbin.io/v3/b/6392030fc5b3a64f1bc6ab28?meta=false";
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
              padding: const EdgeInsets.all(4.0),
              child: GestureDetector(
                  onTap:() {Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => foodtype(allpirul: regapiUrl,typeindex: typeindex,)));},
                                                  child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                          child: Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Image.network(snapshot.data[imgurls]['imgurl'].toString(),
                  fit: BoxFit.fill,
                  ),
                ),
                  Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                  "images/type_dark.png",
                  fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: 200,
                    alignment: Alignment.center,
                    child: Text(
                        'goreng',
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