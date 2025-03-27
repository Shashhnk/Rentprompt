import 'package:flutter/material.dart';

class Entryscreen extends StatelessWidget {
  const Entryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(height: double.infinity,
      width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const Text('Welcome to \n RentPrompts', style: TextStyle(color: Colors.white, fontSize: 30),),
            const SizedBox(
              height: 20,
            ),
            _bluebutton()
          ],
        ),
      ),
    
    );
  }


  
}
