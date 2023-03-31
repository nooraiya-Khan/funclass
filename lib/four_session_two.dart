import 'package:demo/four_session_three.dart';
import 'package:flutter/material.dart';
class Foursessiontwo extends StatefulWidget {
  const Foursessiontwo({super.key});

  @override
  State<Foursessiontwo> createState() => _FoursessiontwoState();
}

class _FoursessiontwoState extends State<Foursessiontwo> {
    Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color.fromARGB(152, 131, 46, 184)),
        title: Center(
          child: Container(
            margin: const EdgeInsets.only(right: 25),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //margin: const EdgeInsets.only(left: 130),
                    child: const Text(
                      "Fun",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(255, 198, 200, 50),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: const Text(
                      "Class",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color.fromARGB(152, 131, 46, 184),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                height: 3,
                width: 80,
                decoration: BoxDecoration(color: Colors.amber[100]),
              )
            ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: TweenAnimationBuilder(
           tween: _scaleTween,
          duration: Duration(milliseconds: 600),
          builder: (context, scale, child) {
            return Transform.scale(
              scale: scale,
              child: child,
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                 SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Session 2 : When we are Cyber Detectives.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(152, 131, 46, 184),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text("Today we will find  the cybercrimes happening around us .The incidents must be those that occured in cyberspace and somehow harmed people and society or hampered security .",
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                ),
                     SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 150, bottom: 30),
                      child: const Text(
                        "Fun",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 198, 200, 50),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "Task",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(152, 131, 46, 184),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Text("Take an A4 paper.Go to page 65.There is a table.draw this table on an A4 paper.complete the table and submit it to me on WhatApp.",
                style: TextStyle(color: Colors.grey),
                
                )
             
              ],
            ),
          ),
          
          ),
      ),
        bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Foursessionthree()));
        },
        child: Container(
          height: 53,
          color: Color.fromARGB(152, 131, 46, 184),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(left: 0)),
              Center(
                child: Text(
                  "Go to session 3 ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
              Icon(
                Icons.double_arrow_sharp,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}