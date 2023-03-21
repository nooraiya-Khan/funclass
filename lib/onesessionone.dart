import 'package:demo/onesessiontwo.dart';
import 'package:flutter/material.dart';

class Onesessionone extends StatefulWidget {
  const Onesessionone({super.key});

  @override
  State<Onesessionone> createState() => _OnesessiononeState();
}

class _OnesessiononeState extends State<Onesessionone> {
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
                  "Session 1 : Intellectual property for personal and commercial use.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(152, 131, 46, 184),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 100),
                child: Text(
                  "What is intellectual property?",
                  textAlign: TextAlign.left,
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
              Container(
                margin: EdgeInsets.only(right: 232),
                child: Text(
                  "Two examples,",
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
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "1. From the story of the book we can see that Afzal Hussain's yogurt is an intellectual property because he invented a formula for making yogurt that is different from others.",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
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
                      fontSize: 18,
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
                      fontSize: 18,
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
                      fontSize: 18,
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
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "1.Write your full name and roll number above the box.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "2.Go to page 33 of your Digital Technology Book",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
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
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Send it to me on whatsapp!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.emoji_emotions_outlined,
                        color: Color.fromARGB(255, 198, 200, 50), size: 25),
                  ],
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
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Onesessiontwo()));
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
