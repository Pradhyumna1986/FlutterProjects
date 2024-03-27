import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/todo.dart';


void main() {
  runApp(const MyApp());
}

//import 'package:flutter/src/widgets/framework.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return  MaterialApp(
      debugShowCheckedModeBanner: true,
      home: const ToDoPage(),
    );
  }
}