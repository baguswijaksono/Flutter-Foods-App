import 'package:flutter/material.dart';

class list_method extends StatelessWidget {
  const list_method({super.key});
  

  @override
  Widget build(BuildContext context) {
     List<int> text = [1,2,3,4,3,56,5,6,7,8,433,353,5,35345,35];
    return Container(
      alignment: Alignment.topLeft,
            child: DefaultTextStyle(
  style: TextStyle(color: Colors.white),
  child: Column(
          children: List.generate(text.length,(index){
            return Text(text[index].toString());
          }),
)

    ));
  }
}