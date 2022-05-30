import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<http.Response> fetchPost() {
  return http.get(Uri.parse('www.naver.com'));
}

void main() async {
  print('run server');
  var res = await fetchPost();
  if (res.statusCode == 200) {
    print('res 200 code ok');
  } else {
    print('err');
  }

  print(res.body);
}
