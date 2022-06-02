import 'package:flutter/material.dart';

twoButtonCard(
    IconData icon, String strTitle, ElevatedButton btn1, ElevatedButton btn2) {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: Icon(icon),
          title: Text(
            strTitle,
          ),
        ),
        ButtonBar(
          children: [
            btn1,
            btn2,
          ],
        )
      ],
    ),
  );
}
