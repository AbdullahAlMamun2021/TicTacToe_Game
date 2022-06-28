import 'dart:async';

import 'package:flutter/material.dart';

import 'screen_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                const Text(
                  'Tic Tac Toe',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/tictac.jpg'),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 200,
              child: Image.asset('images/loading.gif'),
            ),
            const Text(
              'Game Develop By Piistech Limited', textAlign: TextAlign.right,
              style: TextStyle(fontSize: 10),
            ),

          ],
        ),
      ),
    );
  }
}
