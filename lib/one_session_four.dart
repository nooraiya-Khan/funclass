import 'package:demo/one_session_five.dart';
import 'package:flutter/material.dart';

class Onesessiofour extends StatefulWidget {
  const Onesessiofour({super.key});

  @override
  State<Onesessiofour> createState() => _OnesessiofourState();
}

class _OnesessiofourState extends State<Onesessiofour> {
  @override
  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);
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
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Session 4 : Making a terms and condition sheet regarding an intellectual property. ",
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
                margin: EdgeInsets.only(right: 70),
                child: Text(
                  "What is Terms and Conditions Sheet?",
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
                margin: EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  "Terms and conditions sheet help people know what rules to follow when using intellectual property",
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
                margin: EdgeInsets.only(left: 8, right: 8),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromARGB(
                          152,
                          131,
                          46,
                          184,
                        ),
                        Color.fromARGB(255, 172, 172, 169),
                      ]),
                ),
                child: Text(
                  "When we install any app we can see a page for terms and conditions and at the bottom we see an agree and disagree button.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
            
              SizedBox(
                height: 25,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset("assets/tc.png")),
                    SizedBox(height: 10,),
              Text("Read Ritu's story from the book."),
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
                  ),
                ],
              ),
              Text(
                "Go to page no:43 of your book",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "In the table (page : 43) we can see there are three terms ",
                style: TextStyle(
                    color: Color.fromARGB(152, 131, 46, 184),
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  "Proposed terms : In this box you will write the terms and condition for using the intellectual property.There can be many terms like-",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
                
              ),
               Container(
                 padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 5, right: 10),
                 child: Text(
                    "1.If you do not agree to the terms, please do not use this intellectual property.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
               ),
                 Container(
                   padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 5, right: 10),
                   child: Text(
                    "2. Do not attempt to modify the property without the permission of the copyright owner.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                                 ),
                 ),
                 Container(
                   padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 5, right: 10),
                   child: Text(
                    "3.You can contact the copyright owner if you want any changes to the intellectual property.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                                 ),
                 ),
              SizedBox(
                height: 10,
              ),
              Center(child: Text("Try to be creative and find some more terms and conditons.")),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  "commercial use : when pepole do business with intellectual property, then terms and condition used for commercial use. EX : If I publish FUNCLASS app to playstore then i can use the app for commercial use.Then the terms and condition also use for comercial use",
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
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 5, right: 10),
                child: Text(
                  "Personal use : when pepole don't do business with intellectual property, then terms and condition use for personal use. EX : If I don't publish FUNCLASS app to playstore then i'm not able to use the app for commercial use.Then the terms and condition  use for personal use.",
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
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  "Can you help me create terms and conditions for my app (FUNCLASS)?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(152, 131, 46, 184),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Step 1 :Take an A4 paper.There is a table on page 43 of your digital technology book, now draw a table like this on an A4 paper .Don't forget to write your full name and roll no",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Step 2 : Find only three terms for the FUNCLASS app. You can take help of Google for this. Do not use the terms mentioned above.",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey),
                  )),
              SizedBox(
                height: 5,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                      "Step 3 : Give a tick on personal use if you think i can use it for personal use.Ex : if you think when i'm providing the app to surma section i should use this terms. then give a tick on the personal use box",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey))),
              SizedBox(
                height: 5,
              ),
              Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                      "Step 4 : Give a tick on commercial use if you think i can use it for commercial use.Ex : if you think when i will publish the app to playstore i should use this terms. then give a tick on the commercial use box",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey))),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "session 4 ends here.",
                      style: TextStyle(
                          color: Color.fromARGB(152, 131, 46, 184),
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.emoji_emotions_outlined,
                        color: Color.fromARGB(255, 198, 200, 50), size: 25),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Onesessionfive()));
        },
        child: Container(
          height: 53,
          color: Color.fromARGB(152, 131, 46, 184),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 90)),
              Text(
                "Go to session  :  5  ",
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
