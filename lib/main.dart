// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(const MyApp());
}

// login view
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromRGBO(58, 66, 86, 1.0)),
      home: const Login(),
    );
  }
}
