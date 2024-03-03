import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          itemCount: 20,
          itemBuilder: (context, index) => ListTile(
            title: Text(index.toString()),
          ),
        ),
      ),
    );
  }
}
