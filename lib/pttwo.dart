import 'package:demo/onesessionthree.dart';
import 'package:flutter/material.dart';

class pttwo extends StatelessWidget {
   pttwo({super.key});
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
      body: Center(
        child: TweenAnimationBuilder(
          tween: _scaleTween,
          duration: Duration(milliseconds: 600),
          builder: (context, scale, child) {
            return Transform.scale(
              scale: scale,
              child: child,
            );
          },
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                "Bravo! You have done an amazing job.",
                style: TextStyle(
                  color: Color.fromARGB(152, 131, 46, 184),
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text("it's time for another FunTask."),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
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
                        Color.fromARGB(255, 122, 118, 118),
                      ]),
                ),
                child: Text(
                  "Draw a picture of a trademark on an A4 paper,send it to me on WhatsApp.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              Container(
                child: Text(
                  "You can select a trademark from here and draw it on page 39.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(18),
                  child: Image.asset("assets/trade.jpg")),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "session 2 ends here.",
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Onesessionthree()));
        },
        child: Container(
          height: 53,
          color: Color.fromARGB(152, 131, 46, 184),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 90)),
              Text(
                "Go to session  :  3 ",
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
