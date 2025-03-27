import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Welcome \n Back', style: TextStyle(color: Colors.white, fontSize: 30),),
            Spacer(),
            TextField(decoration: InputDecoration(fillColor: Colors.grey,hintText: 'Email'),),
            TextField(decoration: InputDecoration(fillColor: Colors.grey,hintText: 'Password'),),
          ],
        ));
  }
}
