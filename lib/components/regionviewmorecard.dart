import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return               Container(
                height: 175,
                width: 975,
                alignment: Alignment.center,
                child: Image.asset(
                'images/Frame.png',height: 175,width: 975, ),
              );
  }
}