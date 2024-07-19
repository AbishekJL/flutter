// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:repligate/loginpage.dart';
import 'package:repligate/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.circle_notifications_outlined),
        title: Text(
          'SCOPE',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 0, 4),
            child: Image.network('assets/image.png'),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(165, 0, 0, 4),
              child: Text(
                'Hello !',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 0, 4),
              child: Text(
                'Best place to write Life stories and ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w200,
                  color: Colors.grey,
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(90, 0, 0, 4),
              child: Text(
                'share your journey experiences',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                  // fontWeight: FontWeight.w100,
                ),
              )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(90, 0, 0, 5),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginpage()));
              },
              child: Text(
                'LOGIN',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color.fromARGB(255, 35, 10, 119),
                  shadowColor: Colors.orange,
                  minimumSize: Size(250, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0))),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(90, 0, 0, 5),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => signup()));
              },
              child: Text(
                'SIGNUP',
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 35, 10, 119),
                  // backgroundColor: Colors.white,
                  shadowColor: Colors.orange,
                  disabledBackgroundColor: Colors.blue,
                  minimumSize: Size(250, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  side: BorderSide(
                    color: Color.fromARGB(255, 35, 10, 119),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
