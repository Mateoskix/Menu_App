import 'package:app_menu/vistas/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
        ),
      home: const Scaffold(
        backgroundColor: Color(0xFFBFD6D9),
        body: WelcomePage(),
      ),
    );
  }
}
