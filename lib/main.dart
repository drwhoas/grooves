import 'package:flutter/material.dart';
import 'package:grooves/shuffling.dart';
import 'package:grooves/signup.dart';
import 'package:grooves/phoneOTP.dart';
import 'package:grooves/homepage.dart';
import 'package:grooves/loginwithemail.dart';
import 'package:grooves/login.dart';
import 'package:grooves/signupusingemail.dart';

void main() {
  runApp(const Grooves());
}

class Grooves extends StatelessWidget {
  const Grooves({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => const Login(),
        '/phoneotp' : (context) => const PhoneOTP(),
        '/homepage' : (context) => const HomePage(),
        '/loginwithemail' : (context) => const LoginWithEmail(),
        '/signup' : (context) => const SignUp(),
        '/signupusingemail' : (context) => const SignUpUsingEmail(),
        '/shuffle' : (context) => const Shuffle(),
      },
    );
  }
}

