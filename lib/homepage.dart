import 'package:demo/classsix.dart';
import 'package:demo/lrn4.dart';
import 'package:demo/lrnthree.dart';
import 'package:demo/lrntwo.dart';
import 'package:flutter/material.dart';

import 'class seven.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Tween<double> _scaleTween = Tween<double>(begin:0, end: 1);

  Widget build(BuildContext context) {
    return Scaffold(
        body: TweenAnimationBuilder(
             tween: _scaleTween,
      duration: Duration(milliseconds: 600),
      builder: (context, scale, child) {
        return Transform.scale(
          scale: scale,
          child: child,);},
          child: Container(
            child: Card(
              elevation: 1,
              child: Column(
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 220, top: 30, bottom: 5),
                            child: Text(
                              "Class Seven",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(152, 131, 46, 184),
                                  fontSize: 25),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 230),
                            child: Text(
                              "Nooraiya Khan",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Lrntwo()));
                            },
                            child: Container(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              height: 50,
                              margin: const EdgeInsets.only(
                                  top: 10, left: 10, right: 160),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(152, 131, 46, 184),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                "Learning Experience 2  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Lrnthree()));
                            },
                            child: Container(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              height: 50,
                              margin: const EdgeInsets.only(
                                  top: 10, left: 10, right: 160, bottom: 0),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(152, 131, 46, 184),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                "Learning Experience 3  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                           GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => lrn4()));
                            },
                            child: Container(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              height: 50,
                              margin: const EdgeInsets.only(
                                  top: 10, left: 10, right: 160, bottom: 20),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(152, 131, 46, 184),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                "Learning Experience 4  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
