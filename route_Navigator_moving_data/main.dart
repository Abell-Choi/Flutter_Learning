import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: MyPage(
      data: Data('title', 'des'),
    )));

// 데이터 규격 정하기
class Data {
  final String title;
  final String description;

  Data(this.title, this.description);
}

class MyPage extends StatelessWidget {
  final Data data;
  MyPage({Key? key, required this.data}) : super(key: key);
  // 데이터를 받기위해 생성자에 데이터를 받도록 설정해야함

  @override
  initState() {
    print(data.title);
    print(data.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('first Page'),
              Text(data.title),
              Text(data.description),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondPage(
                                data: this.data,
                              )),
                    );
                  },
                  child: Text('asdf'))
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  Data data;
  SecondPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text('second page'),
              Text(data.title),
              Text(data.description),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('move back')),
            ],
          ),
        ),
      ),
    );
  }
}
