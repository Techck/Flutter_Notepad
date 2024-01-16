import 'package:flutter/material.dart';
import 'package:catan/static.dart';

class WelcomeScreen extends StatelessWidget {

  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "欢迎使用记事本",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}