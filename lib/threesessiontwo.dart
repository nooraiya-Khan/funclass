import 'package:flutter/material.dart';
class threesessiontwo extends StatefulWidget {
  const threesessiontwo({super.key});

  @override
  State<threesessiontwo> createState() => _threesessiontwoState();
}

class _threesessiontwoState extends State<threesessiontwo> {
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
    );
  }
}