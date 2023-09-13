import 'dart:async';

import 'package:bmicalcaculator/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget{
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                MyHomePage()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage('assets/images/bmiimage.jpg'),
                  fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.all(Radius.circular(12)),
            border: Border.all(
              color: Colors.deepPurple.shade300,
              width: 5
            ),
            boxShadow: [
              BoxShadow(color: Colors.white,
                blurRadius: 19,
                spreadRadius: 5
              )
            ]
          ),
        ),
      ),
    );
  }
}