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
          title: const Text('Day 04 Column'),
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
        body: Row(//crossAxisAlignment: CrossAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            //scrollDirection: Axis.horizontal,
            children: [
              //1st container
              Container(
                height: 50,
                width: 50,
                color: Colors.deepPurpleAccent[400],
              ),
              //2nd container
              Container(
                height: 50,
                width: 50,
                color: Colors.deepPurpleAccent[200],
              ),
              //3rd container
              Container(
                height: 50,
                width: 50,
                color: Colors.deepPurpleAccent[100],
              )
            ]),
      ),
    );
  }
}
