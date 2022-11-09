import 'package:flutter/material.dart';
import 'package:flutter_application_akhir/navbar/home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home '),
    );
  }
}

