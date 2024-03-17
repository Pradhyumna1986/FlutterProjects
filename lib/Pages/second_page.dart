import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Goto page 1'),
          onPressed: () {
            //goto 2nd page
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FirstPage()));
          },
        ),
      ),
    );
  }
}
