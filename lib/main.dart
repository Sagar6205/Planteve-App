import 'package:flutter/material.dart';
import 'package:planteve/home_page.dart';
import 'package:planteve/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      routes: {

      },
    );
  }
}
