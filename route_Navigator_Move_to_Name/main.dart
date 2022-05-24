import 'dart:js';

import 'package:flutter/material.dart';

Container cont(Widget child) {
  return Container(
    child: child,
    margin: EdgeInsets.all(8),
  );
}

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/sub': (context) => SubScreen(),
      },
    ));

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          cont(Text('main Page')),
          cont(ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sub');
              },
              child: Text("move next page")))
        ],
      )),
    );
  }
}

class SubScreen extends StatelessWidget {
  const SubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          cont(Text('Sub Page')),
          cont(ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Move Priv Page'))),
        ],
      )),
    );
  }
}
