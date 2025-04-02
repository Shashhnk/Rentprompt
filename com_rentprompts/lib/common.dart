import 'package:flutter/material.dart';

Widget bluebutton(String text, void Function() func) {
  return GestureDetector(
    onTap: func,
    child: Container(
      height: 50,
      
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontWeight:FontWeight.bold,color:Colors.white),
        ),
      ),
    ),
  );
}

Widget whitebutton(String text, void Function() func) {
  return GestureDetector(
    onTap: func,
    child: Container(
      height: 50,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(79, 70, 229, 1)),
        ),
      ),
    ),
  );
}
