import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/recomendations.dart';

class region_list extends StatelessWidget {
  const region_list({super.key, required this.regionName});
final String regionName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
  padding: const EdgeInsets.all(0),
  children: <Widget>[
    for (var i = 0; i < 5; i++)
recomendations(indeximg: i, indextxt: i,)
  ],
),
    );
  }
}