import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home_page.dart';
import 'package:flutter_application_1/Pages/profile_page.dart';
import 'package:flutter_application_1/Pages/settings_page.dart';

import 'Pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

//import 'package:flutter/src/widgets/framework.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: true,
      home: LandingPage(),
    );
  }
}
