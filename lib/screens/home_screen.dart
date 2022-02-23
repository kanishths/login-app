// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app_ui/login.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blueAccent,
            Colors.black38,
            Colors.blueAccent,
            Colors.black38,
            Colors.blueAccent,
          ],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Name:',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Kanishtha Siyaram',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  'Assignment for',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.red),
                ),
                Text(
                  'United Game Developers',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ],
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xff4c505b),
              child: IconButton(
                  color: Colors.white,
                  onPressed: () {
                    FirebaseAuth.instance.signOut().then((value) {
                      print('SignOut Successful');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyLogin()));
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
