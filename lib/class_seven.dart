import 'package:demo/lrn_one.dart';
import 'package:demo/lrn_three.dart';
import 'package:demo/lrn_two.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Learning Experience 2',
  'Session : 1',
  'Session : 2',
  'Session : 3',
  'Session : 4',
  'Session : 5'
];

class Classseven extends StatelessWidget {
  const Classseven({super.key});

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
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lrnone()));
                  },
                  child: Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(top: 200, left: 20, right: 20),
                    padding: EdgeInsets.only(left: 30),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(152, 131, 46, 184),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            "Learning Experience 1 ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w300),
                          ),
                          // SizedBox(
                          //   width: 30,
                          // ),
                          // Icon(
                          //   Icons.arrow_drop_down_outlined,
                          //   color: Colors.white,
                          //   size: 40,
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lrntwo()));
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    padding: EdgeInsets.only(left: 30),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(152, 131, 46, 184),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Learning Experience 2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        // Icon(
                        //   Icons.arrow_drop_down_outlined,
                        //   color: Colors.white,
                        //   size: 40,
                        // )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lrnthree()));
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    padding: EdgeInsets.only(left: 30),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(152, 131, 46, 184),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            "Learning Experience 3",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          // Icon(
                          //   Icons.arrow_drop_down_outlined,
                          //   color: Colors.white,
                          //   size: 40,
                          // )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
