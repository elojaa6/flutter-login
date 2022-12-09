import 'package:flutter/material.dart';
import 'package:proyecto/modules/inicio/constants.dart';
import 'package:proyecto/modules/inicio/inicio_page.dart';
import 'package:proyecto/modules/inicio/sections/topsection/top_section.dart';
import 'package:proyecto/modules/login/login_page.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tutorias",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
