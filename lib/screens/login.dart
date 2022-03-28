import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
           image: DecorationImage(image: AssetImage("assets/19366.jpg",),
            fit: BoxFit.fitHeight
          )
        ),
      ),
    );
  }
}