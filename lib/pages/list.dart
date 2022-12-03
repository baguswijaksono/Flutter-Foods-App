import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/components/botnavbar.dart';

class list extends StatelessWidget {
  const list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: bottom_navigation_bar(),
    );
  }
}