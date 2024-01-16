import 'package:flutter/material.dart';
import 'package:catan/welcomePager.dart';
import 'package:catan/loginPager.dart';
import 'package:catan/static.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() {
    return MyState();
  }
}

class MyState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder<String> (
        future: Future.delayed(Duration(seconds: 3), () {
          return "";
        }),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (Static.isShowWelcome || snapshot.connectionState == ConnectionState.done) {
            return LoginScreen();
          } else {
            Static.isShowWelcome = true;
            return WelcomeScreen();
          }
        },
      ),
    );
  }
}