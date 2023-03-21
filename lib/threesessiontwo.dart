import 'dart:ffi';

import 'package:demo/threesessionthree.dart';
import 'package:flutter/material.dart';
import 'package:demo/threesessionone.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:url_launcher/url_launcher.dart';

class threesessiontwo extends StatefulWidget {
  const threesessiontwo({super.key});

  @override
  State<threesessiontwo> createState() => _threesessiontwoState();
}

class _threesessiontwoState extends State<threesessiontwo> {
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
          child: child,);},
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Session 2 : Creating own virtual identity.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(152, 131, 46, 184),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 175),
                child: Text(
                  "What is public sharing?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "In virtual world,when you share your personal information with everyone this is known as public sharing",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 160),
                child: Text(
                  "What is Private sharing?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "If we share absolurely personal information with a specific person , it is called private sharing.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Avatar",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(152, 131, 46, 184)),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "The word comes from the bangla word 'Abotar'.An avatar is an  symbolic image used for virtual identity instead of one's own image ",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset("assets/avatar.jpg"),
              Text(
                "Figure : Avatar",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Let's create your own avatar.",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () async {
                    await launch(
                        "https://www.canva.com/design/DAFdhDTgTic/ZmIZTNkccgXpWGcOy6Wv-A/edit");
                  },
                  child: Card(
                    elevation: 2,
                    child: Column(
                      children: [
                        Container(
                            height: 50,
                            width: 150,
                            // padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                                top: 5, bottom: 5, left: 5, right: 5),
                            child: Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(
                                      "assets/canva.png",
                                    )),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Click Here",
                                  style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.w300),
                                )
                              ],
                            )),
                      ],
                    ),
                  )),
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
                          fontSize: 22,
                          color: Color.fromARGB(255, 198, 200, 50),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: const Text(
                      "Task",
                      style: TextStyle(
                          fontSize: 22,
                          color: Color.fromARGB(152, 131, 46, 184),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Text("It's time to create your own virtual identity!"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                      child: Container(
                          child: Text(
                    "Click Here",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ))),
                  Icon(Icons.arrow_circle_down_outlined)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () async {
                    await launch("https://www.mygov.bd/");
                  },
                  child: Card(
                    elevation: 2,
                    child: Column(
                      children: [
                        Container(
                            height: 40,
                            width: 120,
                            // padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                                top: 5, bottom: 5, left: 5, right: 5),
                            child: Row(
                              children: [
                                Container(
                                    //padding: EdgeInsets.all(10),
          
                                    child: Image.asset(
                                  "assets/mygov.png",
                                )),
                              ],
                            )),
                      ],
                    ),
                  )),
            ]),
          )),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => threesessiothree()));
        },
        child: Container(
          margin: EdgeInsets.only(top: 30),
          height: 53,
          color: Color.fromARGB(152, 131, 46, 184),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 90)),
              Text(
                "Go to session  :  3  ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
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
