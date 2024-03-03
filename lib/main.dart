import 'package:flutter/material.dart';
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
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: const Text('Day 03 Demo'),
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
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            // padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30)),
            padding: const EdgeInsets.all(25),
            child: const Icon(Icons.face_rounded, color: Colors.white, size: 62),
          ),
        ),
      ),
    );
  }
}
