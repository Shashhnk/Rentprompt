import 'package:com_rentprompts/Screen/forgotPassword.dart';
import 'package:com_rentprompts/Screen/signup.dart';
import 'package:com_rentprompts/common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  bool isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        
        body: Container(
          decoration:const BoxDecoration(
          image:DecorationImage(
            image: AssetImage('assets/images/log_in_screen.png'),
            fit: BoxFit.cover),
            ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Welcome\nBack', 
                    style: GoogleFonts.cabin( 
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color:Colors.blue),
                    //TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                const Spacer(),
                const Spacer(),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    focusColor: Colors.blue,
                    icon: Icon(Icons.mail_outline,color: Colors.blue,),
                    
                    fillColor: Colors.grey,
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: isPasswordVisible,
                  decoration: InputDecoration(
                     focusColor: Colors.blue,
                    icon: const Icon(Icons.lock_outline,color: Colors.blue,),
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
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(
                      builder:(context)=>const Forgotpassword()));
                  }, child: const
                  Text('Forgot Password ?',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                bluebutton("Login", () {}),
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
                    const SizedBox(width: 20,),
                    const Text('or'),
                     const SizedBox(width: 20,),
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
                whitebutton('SignUp', (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return  const SignUpPage();
                  }));
                })
              ],
            ),
          ),
        ));
  }
}
