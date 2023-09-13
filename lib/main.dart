import 'dart:async';
import 'package:bmicalcaculator/splash_screen_class.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  double height = 160; // Initial height in centimeters
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('BMI Calculator'),
        backgroundColor: Colors.black,
      ),
      body:Center(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Container(height: 20),
            const Text('Height(cm)', style: TextStyle(fontSize: 27,
                color: Colors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius:BorderRadius.all(Radius.circular(12)),
                  borderSide: BorderSide(color: Colors.white)
                ),
                filled: true,
                fillColor: Colors.black,
                hintText: "Enter Height",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 20), // Remove the border
                  borderRadius: BorderRadius.circular(10.0),
                ),

              )),



          ],
        ) ,
      )

    );
  }
}



