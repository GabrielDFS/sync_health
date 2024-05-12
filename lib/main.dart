import 'package:flutter/material.dart';
import 'package:sync_health/LoginForm.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sync Health'),
        backgroundColor: Color.fromARGB(255, 51, 110, 139),
      ),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}
