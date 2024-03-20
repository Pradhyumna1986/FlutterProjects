// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/profile_page.dart';
import 'package:flutter_application_1/Pages/settings_page.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("HomePage")),
      backgroundColor: Colors.red,
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
