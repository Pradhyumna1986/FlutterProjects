import 'package:flutter/material.dart';

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
          title: const Text('Day 04  ListView.builder'),
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
        body: ListView.builder(
          //EdgeInsetsGeometry:Padding( padding: 20)
          itemCount: name.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(name[index].toString()),
          ),
        ),
      ),
    );
  }
}
