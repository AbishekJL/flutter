// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:repligate/home.dart';
import 'package:repligate/signup.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 30, 0, 0),
              child: Text(
                'Welcome!',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 2, 0, 0),
              child: Text(
                'Sign in to continue',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "amishkr@gmail.com",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(209, 50, 16, 145),
                          fontWeight: FontWeight.bold),
                      hoverColor: Color.fromARGB(255, 54, 54, 54),
                    ),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "...........",
                      hintStyle: TextStyle(
                          color: Color.fromARGB(209, 50, 16, 145),
                          fontWeight: FontWeight.bold,
                          fontSize: 50),
                      hoverColor: Color.fromARGB(255, 54, 54, 54),
                    ),
                  ),
                )),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(95, 0, 0, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => home()));
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(152, 0, 0, 0),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                  )),
            ),
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 20, 5, 0),
                    child: Container(
                      height: 1,
                      width: 130,
                      color: Color.fromARGB(255, 69, 67, 67),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                    child: Text(
                      'or',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Container(
                      height: 1,
                      width: 130,
                      color: Color.fromARGB(255, 69, 67, 67),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(145, 0, 0, 0),
              child: Text(
                'Social Media Login',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.network(
                          'assets/search.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.network(
                          'assets/facebook.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.network(
                          'assets/apple-logo.png',
                          width: 30,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
              child: Row(
                children: [
                  Text("Don't have an account?"),
                  SizedBox(
                    width: 10,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(color: Colors.blueAccent),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
