import 'package:demo/homepage.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    loadTimer();
  }

  Future<Timer> loadTimer() async {
    return new Timer(const Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Homepage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 300),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 80),
                    child: const Text(
                      "Fun",
                      style: TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(255, 198, 200, 50),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: const Text(
                      "Class",
                      style: TextStyle(
                          fontSize: 50,
                          color: Color.fromARGB(152, 131, 46, 184),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Container(
                height: 5,
                width: 100,
                decoration: BoxDecoration(color: Colors.amber[100]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
