import 'package:demo/pt3.dart';
import 'package:flutter/material.dart';

class threesessiothree extends StatefulWidget {
  const threesessiothree({super.key});

  @override
  State<threesessiothree> createState() => _threesessiothreeState();
}

class _threesessiothreeState extends State<threesessiothree> {
  bool isfirstblank = false;
  bool issecondBlank = false;
  bool isthirdBlank = false;
  bool isfourthBlank = false;
  bool isfifthblank = false;

  String firstokMsg = "First box is empty!",
      secondokMsg = "Second box is empty!",
      thirdokMsg = "Third box is empty!",
      fourthokMsg = "Fourth box is empty!",
      fifthokMsg = "Fifth box is empty!";

  var child;
  TextEditingController firstcontroller = new TextEditingController();
  TextEditingController secondcontroller = new TextEditingController();
  TextEditingController thirdcontroller = new TextEditingController();
  TextEditingController fourthcontroller = new TextEditingController();
  TextEditingController fifthcontroller = new TextEditingController();
 
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
            child: Center(
                child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(152, 131, 46, 184))),
                child: Text(
                  "Session 3 : Review of Vitual Identity.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(152, 131, 46, 184),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Three images of Microsoft founder Bill gates  are given below . one is from twitter , one LinkdIn and one from Facebook. Twitter , LinkdIn and facebook are three differtent social media ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                margin: EdgeInsets.all(10),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white70, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Image.asset("assets/twitter.jpg"),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Figure : Twitter profile.",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset("assets/linkdin.jpg"),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Figure : LinkdIn profile.",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image.asset("assets/fb.jpg"),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Figure : Facebook profile.",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
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
                          fontSize: 30,
                          color: Color.fromARGB(255, 198, 200, 50),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: const Text(
                      "Task",
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(152, 131, 46, 184),
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
             
            Text(
              "Fun Task : 1",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
              Text("Go to page 59 and fill in the box with your personal information.",
              style: TextStyle(fontSize: 17),
              textAlign: TextAlign.center,
              ),
              SizedBox(height: 15,),
               Text(
              "Fun Task : 2",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
              Text(
                "Now let's find out the answers to the following questions.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.all(20)),
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
                        height: 100,
                      
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey[100]),
                        child: TextField(
                          maxLines: 3,
                          controller: firstcontroller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                                hintText:
                                              "Answer : ",
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                              labelText: "When was 'Bill Gates' profile opened?",
                              labelStyle: TextStyle(
                                fontSize: 17,
                                  color: Color.fromARGB(152, 131, 46, 184),
                                  fontWeight: FontWeight.w300)),
                        ),
                      ),
                      isfirstblank
                          ? Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    color: Colors.redAccent,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    firstokMsg,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.redAccent),
                                  )
                                ],
                              ),
                            )
                          : Container(),
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
                              height: 150,
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              decoration: BoxDecoration(
                                  border: Border.all(width: 0.1),
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.grey[100]),
                              child: TextField(
                                maxLines: 20,
                                
                                controller: secondcontroller,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                       hintText:
                                              "Answer : ",
                                            
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                    labelText: "How many people follow Bill Gates Twitter,LinkdIn profile?",
                                    
                                    
                                    
                                    labelStyle: TextStyle(
                                    
                                        color:
                                            Color.fromARGB(152, 131, 46, 184),
                                            overflow: TextOverflow.visible,
                                            fontSize: 17,
                                        fontWeight: FontWeight.w300)),
                                        
                              ),
                            ),
                            issecondBlank
                                ? Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.error_outline,
                                          color: Colors.redAccent,
                                          size: 17,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          secondokMsg,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.redAccent),
                                        )
                                      ],
                                    ),
                                  )
                                : Container(),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                           //height: 100,
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    height: 150,
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 0.1),
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.grey[100]),
                                    child: TextField(
                                      maxLines: 100,
                                      controller: thirdcontroller,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                             hintText:
                                              "Answer:",
                                              
                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              
                                              fontWeight: FontWeight.w300),
                                          labelText: "How do you know this is his real profile or identity?",
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  152, 131, 46, 184),
                                              fontWeight: FontWeight.w300)),
                                    ),
                                  ),
                                  isthirdBlank
                                      ? Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.error_outline,
                                                color: Colors.redAccent,
                                                size: 17,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                thirdokMsg,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.redAccent),
                                              )
                                            ],
                                          ),
                                        )
                                      : Container(),
                                  
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 200,
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 0.1),
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.grey[100]),
                                    child: TextField(
                                      maxLines: 100,
                                      controller: fourthcontroller,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText:
                                              "What are his other profile except this one ?",

                                          hintStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300),
                                          labelText: "What are his other profile except this one ?",
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  152, 131, 46, 184),
                                              fontWeight: FontWeight.w300)),
                                    ),
                                  ),
                                  isfourthBlank
                                      ? Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.error_outline,
                                                color: Colors.redAccent,
                                                size: 17,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                fourthokMsg,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.redAccent),
                                              )
                                            ],
                                          ),
                                        )
                                      : Container(),
                                      

                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 200,
                                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 0.1),
                                        borderRadius: BorderRadius.circular(7),
                                        color: Colors.grey[100]),
                                    child: TextField(
                                      
                                      controller: fifthcontroller,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText:
                                              "Answer : ",
                                          hintStyle: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              color: Colors.grey,
                                              fontSize: 15),
                                          labelText:
                                        
                                              "What are the other organizations of Bill gates?",
                                            
                                          labelStyle: TextStyle(
                                              color: Color.fromARGB(
                                                  152, 131, 46, 184),
                                              fontWeight: FontWeight.w300)),
                                              maxLines: 100
                                              
                                              ,
                                    ),
                                  ),
                                 
                            SizedBox( height: 20, ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (firstcontroller.text == "") {
                                                isfirstblank = true;
                                                issecondBlank = false;
                                                isthirdBlank = false;
                                                isfourthBlank = false;
                                                isfifthblank = false;
                                                firstokMsg;
                                              } else if (secondcontroller
                                                      .text ==
                                                  "") {
                                                 isfirstblank = false;
                                                issecondBlank = true;
                                                isthirdBlank = false;
                                                isfourthBlank = false;
                                                isfifthblank = false;
                                                secondokMsg;
                                              } else if (thirdcontroller
                                                      .text ==
                                                  "") {
                                                isfirstblank = false;
                                                issecondBlank = false;
                                                isthirdBlank = true;
                                                isfourthBlank = false;
                                                isfifthblank = false;
                                              }else if (fourthcontroller.text =="") {
                                                 isfirstblank = false;
                                                issecondBlank = false;
                                                isthirdBlank = false;
                                                isfourthBlank = true;
                                                isfifthblank = false;
                                                fourthokMsg;
                                              }
                                              else if (fifthcontroller
                                                      .text ==
                                                  "") {
                                                isfirstblank = false;
                                                issecondBlank = false;
                                                isthirdBlank = false;
                                                isfourthBlank = false;
                                                isfifthblank = true;
                                              }
                                                 else {
                                                isfirstblank = false;
                                                issecondBlank = false;
                                                isthirdBlank = false;
                                                isfourthBlank = false;
                                                isfifthblank = false;
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Pt3()));
                                              }
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                bottom: 20,
                                                left: 20,
                                                right: 20),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Color.fromARGB(
                                                        152, 131, 46, 184)),
                                            child: Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Text(
                                                      "Go to session : 4",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Colors.white,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                             
            ]))))]))]))]))]))));
  }
}
