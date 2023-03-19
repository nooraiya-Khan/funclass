import 'package:demo/onesessiofive.dart';
import 'package:flutter/material.dart';

class Onesessiofour extends StatefulWidget {
  const Onesessiofour({super.key});

  @override
  State<Onesessiofour> createState() => _OnesessiofourState();
}

class _OnesessiofourState extends State<Onesessiofour> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(152, 131, 46, 184))),
                
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
                child: Text(
                  "What is Terms and Conditions Sheet?",
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
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(152, 131, 46, 184))),
                child: Text(
                  "Terms and conditions sheet help people know what rules to follow when using intellectual property",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 8,right: 8),
               padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(152, 131, 46, 184,),
              Color.fromARGB(255, 198, 200, 50),]),
            

            ),
                child: Text(
                  "When we install any app we can see a page for terms and conditions and at the bottom we see an agree and disagree button.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 25,),
              Image.asset("assets/tc.png"),
              SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 150,bottom: 30
                      ),
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
                    ),
                    
                  ],
                ),
                Text("Go to page no:43 of your book",
                style: TextStyle(fontSize: 18),
                
                ),
                Text("In the table (page : 43) we can see there are three terms ",
                style: TextStyle(color: Color.fromARGB(152, 131, 46, 184), fontWeight: FontWeight.bold,fontSize: 15),
                ),
                 SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(152, 131, 46, 184))),
                child: Text(
                  "Proposed terms : In this box you will write the terms and condition for using the intellectual property. Ex : if you do not agree to the terms and  conditions , please do not use this site .",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ), SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(152, 131, 46, 184))),
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
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(152, 131, 46, 184))),
                child: Text(
                  "Personal use : when pepole don't do business with intellectual property, then terms and condition use for personal use. EX : If I don't publish FUNCLASS app to playstore then i'm not able to use the app for commercial use.Then the terms and condition  use for personal use.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ), 
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 5,right: 5),
                child: Text("Can you help me create terms and conditions for my app (FUNCLASS)?",textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20,color: Color.fromARGB(152, 131, 46, 184),fontWeight: FontWeight.bold),
                
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 10,right: 10),
                child: Text("Step 1 : Find only three terms for the FUNCLASS app. You can take help of Google for this. You can download several apps to get an idea of ​​the terms and conditions.write it on the book .use pencil",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300),)),
              SizedBox(height: 5,),
              Container(
                  margin: EdgeInsets.only(left: 10,right: 10),
                child: Text("Step 2 : Give a tick on personal use if you think i can use it for personal use.Ex : if you think when i'm providing the app to surma section i should use this terms. then give a tick on the personal use box",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300))),
               SizedBox(height: 5,),
                Container(
                    margin: EdgeInsets.only(left: 10,right: 10),
                  child: Text("Step 3 : Give a tick on commercial use if you think i can use it for commercial use.Ex : if you think when i will publish the app to playstore i should use this terms. then give a tick on the commercial use box",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w300))),
                 SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "And session 1 ends here.",
                      style: TextStyle(
                          color: Color.fromARGB(152, 131, 46, 184),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.emoji_emotions_outlined,
                        color: Color.fromARGB(255, 198, 200, 50), size: 25),
                  ],
                ),
              ),
              
                SizedBox(height: 30,)
          ],
          
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
