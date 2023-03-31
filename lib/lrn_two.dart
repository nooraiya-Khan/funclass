import 'package:demo/one_session_five.dart';
import 'package:demo/one_session_four.dart';
import 'package:demo/one_session_one.dart';
import 'package:demo/one_session_three.dart';
import 'package:demo/one_session_two.dart';
import 'package:flutter/material.dart';

class Lrntwo extends StatefulWidget {
  const Lrntwo({super.key});

  @override
  State<Lrntwo> createState() => _LrntwoState();
}

class _LrntwoState extends State<Lrntwo> {
  
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
      body: TweenAnimationBuilder(
         tween: _scaleTween,
      duration: Duration(milliseconds: 600),
      builder: (context, scale, child) {
        return Transform.scale(
          scale: scale,
          child: child,);},
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(top: 50, left: 0, right: 0),
              child: const Text(
                "Learning Experience 2",
                style: TextStyle(
                  color: Color.fromARGB(152, 131, 46, 184),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              child: const Text(
                "Use of Intellectual property.",
                style: TextStyle(
                  color: Color.fromARGB(147, 0, 0, 0),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                "Select a session and start learning from the experience.",
                style: TextStyle(color: Colors.grey,fontStyle: FontStyle.italic),
                
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Onesessionone()));
              },
              child: Container(
                height: 50,
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                padding: EdgeInsets.only(left: 30),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(152, 131, 46, 184),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Session 1 ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Container(
                            child: Icon(
                              Icons.double_arrow_sharp,
                              color: Colors.white,
                              size: 20,
                            ),
                          )
                        ],
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
                    MaterialPageRoute(builder: (context) => Onesessiontwo()));
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
                      "Session 2",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Container(
                      child: Icon(
                        Icons.double_arrow_sharp,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Onesessionthree()));
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
                        "Session 3",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Container(
                        child: Icon(
                          Icons.double_arrow_sharp,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Onesessiofour()));
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
                        "Session 4",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 160,
                      ),
                      Container(
                        child: Icon(
                          Icons.double_arrow_sharp,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Onesessionfive()));
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
                      "Session 5",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Container(
                      child: Icon(
                        Icons.double_arrow_sharp,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
