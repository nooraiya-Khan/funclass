import 'package:flutter/material.dart';

class Onesessiontwo extends StatefulWidget {
  const Onesessiontwo({super.key});

  @override
  State<Onesessiontwo> createState() => _OnesessiontwoState();
}

class _OnesessiontwoState extends State<Onesessiontwo> {
  @override
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
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "Session 2 : Protecting the rights of the copyright owner.",
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
              child: Text(
                "Who is copyright owner?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 5, top: 3, bottom: 3),
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Color.fromARGB(152, 131, 46, 184))),
              child: Text(
                "Once you create an original work and fix it,you are the author and the owner.",
                style: TextStyle(
                    color: Color.fromARGB(255, 158, 158, 158),
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "What is Trademark?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 5, top: 3, bottom: 3),
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Color.fromARGB(152, 131, 46, 184))),
              child: Text(
                "Trademark is an unique logo or name of slogan that can differentiate intellectual property from the similar property .As a result no one can make fake copies of their intellectual property  and market it as per their wish ",
                style: TextStyle(
                    color: Color.fromARGB(255, 158, 158, 158),
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Image.asset("assets/trademark.jpg"),
            ),
          ],
        ),
      ),
    );
  }
}
