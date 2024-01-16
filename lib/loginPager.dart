import 'package:flutter/material.dart';
import 'package:catan/static.dart';
import 'package:catan/indexPager.dart';

var loginState = _LoginState();

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State createState() {
    return loginState;
  }
}

class _LoginState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    if (Static.isLogin) {
      return IndexScreen();
    } else {
      return _LoginScreen();
    }
  }
}

class _LoginScreen extends StatelessWidget {

  _LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SizedBox(
          width: 400,
          child: Card(
            child: _LoginForm(),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatefulWidget {

  _LoginForm({super.key});

  @override
  State createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<_LoginForm> {

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login () {
    var username = _usernameController.value.text;
    var password = _passwordController.value.text;
    if (username == "admin" && password == "123456") {
      loginState.setState(() {
        Static.isLogin = true;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text("用户名密码错误")
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 32, 32, 8),
            child: TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(hintText: '请输入用户名'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
            child: TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(hintText: '请输入密码'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: TextButton(
              onPressed: _login,
              child: const Text('登陆'),
            ),
          ),
        ],
      ),
    );
  }
}