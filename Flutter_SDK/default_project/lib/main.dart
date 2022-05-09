import 'package:flutter/material.dart';
import 'SubPages/page2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: Text('asdf'),
        onPressed: () {
          print(double.infinity);
        },
      ),
    );
  }
}
