import 'dart:async';

import 'package:flutter/material.dart';

import 'home.dart';

class CoffeeSplashScreen extends StatefulWidget {
  const CoffeeSplashScreen({super.key});

  @override
  State<CoffeeSplashScreen> createState() => _CoffeeSplashScreenState();
}

class _CoffeeSplashScreenState extends State<CoffeeSplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen())));
             super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/coffee_logo.png',width: 200,height: 200,),
            const SizedBox(
              height: 5,
            ),
            const Text("Coffee Center",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
