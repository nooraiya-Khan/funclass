import 'package:demo/threesessiontwo.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Threesessionone extends StatefulWidget {
  const Threesessionone({super.key});

  @override
  State<Threesessionone> createState() => _ThreesessiononeState();
}

class _ThreesessiononeState extends State<Threesessionone> {
  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);
  @override
  var child;
  TextEditingController textdata = new TextEditingController();
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
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Session 1 : Concept of virtual identity.",
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
                margin: EdgeInsets.only(right: 178),
                child: Text(
                  "What is virtual world?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 3, bottom: 3),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Virtual world is where no one sees me but realises my digital presence ",
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
                margin: EdgeInsets.only(right: 155),
                child: Text(
                  "What is virtual identity?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.only(left: 5, top: 3, bottom: 3),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "A virtual identity is some information shared about us on social media or digital communication. For example if I use my name on Facebook as Mrs. Lizz. It's a part of my virtual identity. People will know me by this name.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
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
              
              SizedBox(
                height: 10,
              ),
              Text(
                "Fun Task : 1",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Now tell me what is virtual identity in your words.Don't forget to write your full name and roll.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                // height: 100,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.grey[100]),
                    child: SizedBox(
                      height: 300,
                      child: TextField(
                        maxLines: 200,
                        controller: textdata,
                        decoration: InputDecoration(
                          label: Text.rich(
                            textAlign: TextAlign.start,
                            TextSpan(
                              children: <InlineSpan>[
                                WidgetSpan(
                                  child: Text('Ans:',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 1,
                                          color:
                                              Color.fromARGB(0, 255, 255, 255))),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      // height: 100,
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                          // height: 100,
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(152, 131, 46, 184),
                                onPrimary: Color.fromARGB(152, 131, 46, 184),
                              ),
                              onPressed: () async {
                                if (textdata.value.text.isNotEmpty) {
                                  await Share.share(textdata.text);
                                }
                              },
                              child: const Text(
                                "Send",
                                style: TextStyle(color: Colors.white),
                              )))),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Fun Task : 2",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Take an A4 paper.make a table as page:50 of your Digital Technology book.Complete the table with alina's information and submit it to me on WhatsApp",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Fun Task : 3",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Take an A4 paper, there is a box for known information and a box for  unknown information on page : 52.now complete the box",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Find profiles of a doctor and a teacher. Write what you know from the profile in the known box. Some information which you can't know from profile like - passport number, mobile number, NID card number Because these are personal information.No one should give their personal information in the virtual world cause People can use this personal information to harm you . Now, Write Name of those information in the unknown box",
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Now take a picture of this page and send it to me on whats app.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 30),
                              height: 180,
                              width: 180,
                              child: Image.asset("assets/teacher.jpg")),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Teacher",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Container(
                              height: 180,
                              width: 180,
                              child: Image.asset("assets/doc.jpg")),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Doctor",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ]),
              )
            ]),
          )),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => threesessiontwo()));
        },
        child: Container(
          height: 53,
          color: Color.fromARGB(152, 131, 46, 184),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 90)),
              Text(
                "Go to session  :  2  ",
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
