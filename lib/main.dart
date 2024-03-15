import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  List name = ['Somya', 'Gomya', 'Tomya'];
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter first App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: const Text('Day 05  GridView.builder'),
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
        body: GridView.builder(
            itemCount: 64,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) => Container(
                  color: Colors.deepOrangeAccent,
                  margin: const EdgeInsets.all(5),
                )),
      ),
    );
  }
}
