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
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sync Health',
          style: TextStyle(
            color: const Color.fromARGB(
                255, 255, 255, 255),
            fontSize: 25,
            fontWeight: FontWeight.bold,
            fontStyle:
                FontStyle.italic,
            fontFamily: 'Roboto',
          ),
        ),
        backgroundColor: Color.fromARGB(255, 75, 177, 228),
      ),
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}
