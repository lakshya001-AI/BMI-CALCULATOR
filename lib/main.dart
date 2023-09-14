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
  double weight = 60; // Initial weight in kilograms
  double bmi = 0;
  String result = "";

  void calculateBMI(){
    setState(() {
      bmi = weight / ((height/100)*(height/100));
      if (bmi < 18.5) {
        result = "Underweight";
      } else if (bmi >= 18.5 && bmi < 24.9) {
        result = "Normal";
      } else {
        result = "Overweight";
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        backgroundColor: Colors.black,
      ),
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20,
              ),
              const Text('Height(cm)', style: TextStyle(fontSize: 27,
                  color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 100,
                width: 320,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    filled: true,
                    fillColor: Colors.black,
                    hintText: "Enter Your Height",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(17))
                    ),
                  ),
                  onChanged: (value) => setState(() {
                    height = double.parse(value);
                  }),
                ),
              ),
              const Text('Weight(kg)', style: TextStyle(fontSize: 27,
                  color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 100,
                width: 320,
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.white)
                    ),
                    filled: true,
                    fillColor: Colors.black,
                    hintText: "Enter Your Weight",
                    hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(17))
                    ),
                  ),
                  onChanged: (value) => setState(() {
                    weight = double.parse(value);
                  }),
                ),
              ),
              const SizedBox(height: 3),
              SizedBox(
                width: 180,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    calculateBMI();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(17)))
                  ),
                  child: const Text(
                    "Calculate BMI",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: 250,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                  border: Border.all(
                    color: Colors.green, // Border color
                    width: 2, // Border width
                  ),
                ),
                child:  Center(
                  child: Text(
                    'Your BMI Is : ${bmi.toStringAsFixed(2)}',
                    style: const TextStyle(fontSize: 21, color: Colors.white,  fontWeight: FontWeight.bold),
                  ),
                )
              ),
              const SizedBox(height: 26),
              Container(
                  width: 250,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                    border: Border.all(
                      color: Colors.green, // Border color
                      width: 2, // Border width
                    ),
                  ),
                child:  Center(
                  child: Text(
                    "Result's : $result", style: const TextStyle(color: Colors.white, fontSize: 21,  fontWeight: FontWeight.bold),
                  ),
                ),

              ),
            ],
          ),
        )
      ),

      );


  }
}



