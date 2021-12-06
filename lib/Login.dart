// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(58, 66, 86, 1.0),
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width,
                height: height * 0.45,
                child: Image.asset(
                  'assets/mnet_health_1.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'MediKit',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  // obscureText: false,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    // fillColor: Colors.white,
                    // filled: true,
                    labelStyle: TextStyle(color: Colors.grey),
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon:
                        Icon(Icons.account_circle_sharp, color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                    labelText: 'Username',
                    // fillColor: Colors.white,
                    hintText: 'Enter your username',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.grey),
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                    labelText: 'Password',
                    hintText: 'Enter your secure password',
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(64, 75, 96, .9),
                  ),
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
