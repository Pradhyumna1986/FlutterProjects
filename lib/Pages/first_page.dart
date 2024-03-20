// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Pages/f.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Page')),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //Drawer header

            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            //home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text('FirstPage'),
              onTap: () {
                Navigator.pushNamed(context, '/FirstPage');
              },
            ),
            //setting page list tile
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('SecondPage'),
              onTap: () {
                Navigator.pushNamed(context, '/SecondPage');
              },
            ),
            //setting2
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings Page'),
              onTap: () {
                Navigator.pushNamed(context, '/SettingsPage');
              },
            )
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Goto page 2'),
          onPressed: () {
            //goto 2nd page
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => const SecondPage()));
            Navigator.pushNamed(context, '/SecondPage');
          },
        ),
      ),
    );
  }

  ff() {}
}
