import 'package:demo/lrn4.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class threesessionfour extends StatefulWidget {
  const threesessionfour({super.key});

  @override
  State<threesessionfour> createState() => _threesessionfourState();
}

class _threesessionfourState extends State<threesessionfour> {
  final videoURL =
      "https://www.youtube.com/watch?v=DvmQTRpJMOM&list=PLqk_nYNfqhAuNgbiZ6hdnxD7J-efAEdCJ&index=2";
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    super.initState();
  }

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
            child: Center(
                child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(3),
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Session 4 : Let's create a virtual identity for myself.",
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
              Text(
                "Let's know some information about Kishore Batayan or Konnect",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Kishore Batayan or Konnect is an educational website  where class videos can be viewed anytime from anywhere.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "- We can search topics and chapters as per our choice",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "- We can access the class multiple times",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 7,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "- We can download any book in pdf format.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "- Also we can download our favorite author's book",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "- We'll also have lots of fun comics",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 7,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Have a look to the website",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 198, 200, 50),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Color.fromARGB(255, 198, 200, 50),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () async {
                    await launch("http://konnect.edu.bd/");
                  },
                  child: Card(
                    elevation: 2,
                    child: Column(
                      children: [
                        Container(
                            height: 50,
                            width: 150,
                            // padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                                top: 5, bottom: 5, left: 5, right: 5),
                            child: Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.all(10),
                                    child: Image.asset(
                                      "assets/logo.jpg",
                                    )),
                              ],
                            )),
                      ],
                    ),
                  )),
              SizedBox(
                height: 15,
              ),
              Text(
                "VIDEO TIME!",
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 198, 200, 50),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  onReady: () => debugPrint('Ready'),
                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(
                      isExpanded: true,
                      colors: const ProgressBarColors(),
                    ),
                    const PlaybackSpeedButton()
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
                "Create an account on Kishore Batayan or Konnect.Submit the E-mail and password to me.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 30,
              ),
            ])),
          )),
              bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => lrn4()));
        },
        child: Container(
          margin: EdgeInsets.only(top: 30),
          height: 53,
          color: Color.fromARGB(152, 131, 46, 184),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(left: 0)),
              Text(
                "Go Learning Experience  :  4  ",
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
