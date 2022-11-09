import 'package:flutter/material.dart';

class searchbar extends StatefulWidget {
  const searchbar({super.key});

  @override
  State<searchbar> createState() => _searchbarState();
}

class _searchbarState extends State<searchbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(children: [
          Text('Search for a food')
        ]),
        ),
    );
  }
}