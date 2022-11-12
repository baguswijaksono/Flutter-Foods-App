import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
scrollDirection: Axis.vertical,
  child: Container(
    height: 800,
    child: GridView.count(
          crossAxisCount: 3,
          children: [...myImagesAdapted],
        ),
    ));//
    
  }
}

final List<Image> myImagesAdapted = [
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
    Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
    Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
    Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
    Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
    Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  Image(
    image: AssetImage('images/ina.jpg'),
    fit: BoxFit.cover,
  ),
  
];
