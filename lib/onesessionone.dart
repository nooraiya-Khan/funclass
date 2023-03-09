import 'package:demo/onesessiontwo.dart';
import 'package:flutter/material.dart';

class Onesessionone extends StatefulWidget {
  const Onesessionone({super.key});

  @override
  State<Onesessionone> createState() => _OnesessiononeState();
}

class _OnesessiononeState extends State<Onesessionone> {
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
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Session 1 : Intellectual property for personal and commercial use.",
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
                  "What is intellectual Property?",
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
                  "Intellectual property is something that you create using your mind - for example, a story, an invention, an artistic work or a symbol.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158),
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Two Examples,",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "1. From the story of the book we can see that Afzal Hussain's yogurt is an intellectual property because he invented a formula for making yogurt that is different from others.",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "2.Mymensingh Gitika is an example of intellectual property. This is a collection of local songs of Mymensingh region and song is an artistic work",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Personal and commercial use of intellectual products",
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
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Personal Use : When the intellectual property is being used for personal purposes, Ex : when we buy yogurt to eat",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "Commercial Use : When the intellectual property is being used for business purposes, Ex : If someone buys yogurt, he counterfeits the product and starts a business with the product.",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's do some fun task!",
                      style: TextStyle(
                          color: Color.fromARGB(152, 131, 46, 184),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.edit_note,
                        color: Color.fromARGB(255, 198, 200, 50), size: 25),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "1.Go to page 33 of your Digital Technology Book",
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
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "2. Let's make some decisions. Write the decision in the box(use Pencil). ",
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
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Onesessiontwo()));
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
                              "Go to session two ",
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
              SizedBox(
                height: 40,
              )
              //Personal and commercial use of intellectual products
            ],
          ),
        ),
      ),
    );
  }
}
