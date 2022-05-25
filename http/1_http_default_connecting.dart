import 'package:flutter/material.dart';
import 'dart:convert'; // 한글 깨짐 방지
import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.https('naver.com', '/');
  var res = await http.get(url, headers: {
    'Content-Type': 'application/json',
    'Accept': 'application/json'
  });
  var stcode = res.statusCode;
  var resHeader = res.headers;
  var resBody = utf8.decode(res.bodyBytes);

  print('states : $stcode');
  print('resHeader : $resHeader');
  print('resBody : $resBody');

  runApp(MaterialApp(
    home: Test(),
  ));
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('nobody'),
      ),
    );
  }
}
