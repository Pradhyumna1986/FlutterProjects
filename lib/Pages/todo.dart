import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  String _welcomeMsg = '';
//text controller to access user input
  TextEditingController myController = TextEditingController();

  // method for taking user input
  getuserInput() {
    print('print myController = ' + myController.text);
    setState(() {
      _welcomeMsg = "Hello,${myController.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LandingPage")),
      body: Center(
        //text field
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_welcomeMsg),
              TextField(
                controller: myController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'User Input here'),
              ),

              //Button
              ElevatedButton(onPressed: getuserInput, child: const Text('TAP'))
            ],
          ),
        ),
      ),
    );
  }
}
