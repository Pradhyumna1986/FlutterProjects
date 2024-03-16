// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // function methods
  void logTapped() {
    print('USer Tapped..!');
  }
  void logTappedDouble(){
    print('USer DoubleTap..!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Day 07 Gesture Detector',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Day 07 Gesture Detector'),
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
            child: GestureDetector(
          onTap: logTapped,
          onDoubleTap:logTappedDouble ,
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                color: Colors.deepPurple[300],
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: const Center(child: Text('Tab me and log..!')),
          ),
        )),
      ),
    );
  }
}
