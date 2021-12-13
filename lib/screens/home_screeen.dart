// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:the_social/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _fAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 180,
              child: Image.asset("assets/images/logo.jpg"),
            ),
            // ignore: prefer_const_constructors
            Text(
              "Welcome to The Social",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Name"),
            Text("Email"),
            SizedBox(
              height: 20,
            ),
            ActionChip(
              label: Text("Logout"),
              onPressed: () {
                _fAuth
                    .signOut()
                    .then((value) => {
                          Fluttertoast.showToast(msg: "Logging out"),
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen())),
                        })
                    .catchError((e) {
                  Fluttertoast.showToast(msg: e.toString());
                });
              },
              backgroundColor: Colors.blue,
            )
          ],
        ),
      )),
    );
  }
}
