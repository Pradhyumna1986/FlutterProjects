import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/first_page.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SettingsPage Page')),
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
