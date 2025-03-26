import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Text('Welcome \n Back', style: TextStyle(color: Colors.white,fontSize:25),
        ),
      )
      );
  }
}