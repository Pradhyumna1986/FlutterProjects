// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override

  //varibale
  int _Counter = 0;
  //Method
  _increaseCountaer() {
    setState(() {
      _Counter = _Counter + 1;
    });
  }

  //UI

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Demo App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You clicked button this many times', style: (TextStyle(fontSize: 20))),
            Text(_Counter.toString(), style: (TextStyle(fontSize: 40))),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
               
              ),
              onPressed: _increaseCountaer,
              child: const Text('Click to increment counter'),
            ),
          ],
        ),
      ),
    );
  }
}
