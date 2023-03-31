import 'package:demo/four_session_six.dart';
import 'package:flutter/material.dart';
class Foursessionfive extends StatefulWidget {
  const Foursessionfive({super.key});

  @override
  State<Foursessionfive> createState() => _FoursessionfiveState();
}

class _FoursessionfiveState extends State<Foursessionfive> {
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
          },child: Container(
            child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Center(
                    child: Text(
                      "Session 5 : We shall formulate our cyber security policy.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(152, 131, 46, 184),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
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
                Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                  
                  child: Text("Take an A4 paper, make 5 cyber security policy for the class.",
                  style: TextStyle(color: Colors.grey),
                  ))
            ]),
          ),
        ),


      ),
       bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Foursessionsix()));
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
                  "Go to session 5 ",
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