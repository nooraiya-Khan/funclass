import 'package:demo/onesessionthree.dart';
import 'package:flutter/material.dart';

class pttwo extends StatelessWidget {
  const pttwo({super.key});

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
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 15,),
              Text("Bravo! You have done an amazing job.",
              style: TextStyle(color: Color.fromARGB(152, 131, 46, 184),
              fontSize: 22,
              fontWeight: FontWeight.w300,
              
              ),
              ),
               Text("it's time for another FunTask."),
               SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
               decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(152, 131, 46, 184,),
              Color.fromARGB(255, 198, 200, 50),]),
            

            ),
            
            child: Text("Go to page No:39 of your book and draw a trademark picture",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 17),
            ),

               ),
               SizedBox(height: 23,),
               Container(
                 child: Text("You can select a trademark from here and draw it on page 39.",textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                
                 ),
                 ),
               ),
               SizedBox(height: 10,),
               Image.asset("assets/trade.jpg"),
                  SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "And session 2 ends here.",
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
                        Row(
                          children: [
                            Text(
                              "Go to session three ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Container(
                              child: Icon(
                                Icons.double_arrow_sharp,
                                color: Colors.white,
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
         
          

              
            ],
          ),
        ),
    );
  }
}
