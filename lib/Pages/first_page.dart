import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Goto page 2'),
          onPressed: () {
            //goto 2nd page
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const SecondPage()));
            Navigator.pushNamed(context, '/SecondPage1');
          },
        ),
      ),
    );
  }
}
