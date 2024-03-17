import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/first_page.dart';
import 'package:flutter_application_1/Pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: const FirstPage(),
      routes: {
        '/SecondPage1': (context) => const SecondPage(),
        '/FirstPage': (context) => const FirstPage(),
      },
    );
  }
}
