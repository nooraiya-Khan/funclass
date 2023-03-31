import 'package:demo/four_session_four.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Foursessionthree extends StatefulWidget {
  const Foursessionthree({super.key});

  @override
  State<Foursessionthree> createState() => _FoursessionthreeState();
}

class _FoursessionthreeState extends State<Foursessionthree> {
  @override
  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);
    final videoURL = "https://youtu.be/8tR9P4QX82I";
     @override
  late YoutubePlayerController _controller;
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    _controller = YoutubePlayerController(
        initialVideoId: videoID!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    super.initState();
  }
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
          },
          child: Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                 SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Session 3 : We will Prevent Cybercrimes Now .",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(152, 131, 46, 184),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
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
                YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  onReady: () => debugPrint('Ready'),
                  bottomActions: [
                    CurrentPosition(),
                    ProgressBar(
                      isExpanded: true,
                      colors: const ProgressBarColors(
                        playedColor: Color.fromARGB(152, 131, 46, 184),
                        handleColor: Color.fromARGB(255, 158, 158, 158),
                      ),
                    ),
                    const PlaybackSpeedButton()
                  ],
                ),
    
  ] ),

),



    )
    
    ),
    bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Foursessionfour()));
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
                  "Go to session 4 ",
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
      ),);
  }
}