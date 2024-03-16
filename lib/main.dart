// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List name = ['Somya', 'Gomya', 'Tomya'];
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 06 Stack Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Day 06 Stack Demo'),
          backgroundColor: Colors.deepPurple,
          elevation: 0,
          leading: const Icon(Icons.menu),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: Stack(
          //alignment: Alignment.bottomCenter,
          //alignment: Alignment.center,
          //alignment: Alignment.bottomLeft,
          alignment: Alignment.centerRight,

          children: [
            //bigg] box
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            //medium box
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
            ),
            //small box
            Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 35, 3, 244),
            )
          ],
        ),
      ),
    );
  }
}
