import 'package:flutter/material.dart';

Widget _bluebutton(String text, void Function() func) {
  return GestureDetector(
      onTap: func,
      child: Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.blue),
          child: Center(child: Text(text))));
}

Widget _whitebutton(String text, void Function() func) {
  return GestureDetector(
      onTap: func,
      child: Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          child:
              Center(child: Text(text, style: TextStyle(color: Colors.blue)))));
}
