import 'package:com_rentprompts/Screen/login.dart';
import 'package:com_rentprompts/common.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController _emailController;
  late TextEditingController _nameController;
  late TextEditingController _passwordController;

  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _nameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create \nAccount',
                  style: TextStyle(color: Colors.blue, fontSize: 30),
                ),
              ),
              const Spacer(),
              const Spacer(),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  focusColor: Colors.blue,
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.blue,
                  ),
                  fillColor: Colors.grey,
                  hintText: 'Name',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  focusColor: Colors.blue,
                  icon: Icon(
                    Icons.mail_outline,
                    color: Colors.blue,
                  ),
                  fillColor: Colors.grey,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                obscureText: isPasswordVisible,
                decoration: InputDecoration(
                  focusColor: Colors.blue,
                  icon: const Icon(
                    Icons.lock_outline,
                    color: Colors.blue,
                  ),
                  suffixIcon: isPasswordVisible
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: const Icon(Icons.visibility_off))
                      : GestureDetector(
                          onTap: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: const Icon(Icons.visibility)),
                  fillColor: Colors.grey,
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              bluebutton("SignUp", () {}),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 100,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text('or'),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 100,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              whitebutton('LogIn', () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LogInPage();
                }));
              })
            ],
          ),
        ));
  }
}
