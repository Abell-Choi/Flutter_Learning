import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomeScreen()));

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String data = 'not complite';

  _navigation_System(BuildContext context) async {
    final res = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => SecondSCreen()));
    setState(() {
      data = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                _navigation_System(context);
              },
              child: Text('Run'),
            ),
            Text('$data'),
          ],
        )),
      ),
    );
  }
}

class SecondSCreen extends StatelessWidget {
  const SecondSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => {Navigator.pop(context, 'ok')},
                child: Text('ok')),
            ElevatedButton(
                onPressed: () => {Navigator.pop(context, 'no')},
                child: Text('no')),
          ],
        ),
      ),
    );
  }
}
