import 'package:com_rentprompts/Screen/login.dart';
import 'package:com_rentprompts/Screen/signup.dart';
import 'package:com_rentprompts/common.dart';
import 'package:flutter/material.dart';

class Entryscreen extends StatelessWidget {
  const Entryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange, // Change Your Color HERE
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("PLACE YOUR LOGO HERE"),
            ),
            const Spacer(),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'RentPrompts',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'RentPrompts',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            whitebutton('Log In', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return  LogInPage();
                  },
                ),
              );
            }),
            const SizedBox(
              height: 30,
            ),
            bluebutton('Sign Up', () {
               Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpPage();
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
