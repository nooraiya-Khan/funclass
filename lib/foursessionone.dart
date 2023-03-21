import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Foursessionone extends StatefulWidget {
  const Foursessionone({super.key});

  @override
  State<Foursessionone> createState() => _FoursessiononeState();
}

class _FoursessiononeState extends State<Foursessionone> {
  @override
  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);
  final videoURL = "https://youtu.be/-yFWn4x82pk";
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
              child: child,
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Session 1 : Different types of cyber crimes.",
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
                  margin: EdgeInsets.only(left: 0),
                  child: Text(
                    "What is virtual world?",
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
                  padding: EdgeInsets.only(left: 0, top: 3, bottom: 3),
                  margin: EdgeInsets.only(left: 0, right: 0),
                  child: Text(
                    "A virtual world (also called virtual space,cyber world,cyber space) is a internet-based environment used by multiple users who can create a personal avatar, explore the virtual world, participate in its activities, and communicate with others through social media.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 158, 158, 158),
                        fontSize: 18,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "In this chapter we will learn how to keep ourselves, our families and society secure in virtual world."),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left: 0),
                  child: Text(
                    "Different types of cyber crimes",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
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
                Center(
                    child: Text(
                  "Do some research and find 10 cyber crimes,Don't forget to write your full name and roll no  below.",textAlign: TextAlign.center,
                )),
                Container(
                  margin: EdgeInsets.only(
                    left: 120,
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "Write it here ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22, color: Colors.grey),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Color.fromARGB(152, 131, 46, 184),
                          size: 40,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.1),
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.grey[100]),
                    child: TextField(
                    
                      enableInteractiveSelection: false,
                                  autofocus: false,
                      maxLines: null,
                      controller: textdata,
                      decoration: InputDecoration(
                        
                        label: Text.rich(
                         TextSpan(
                            children: <InlineSpan>[
                                    WidgetSpan(
                                      child: Column(
                                        children: [
                                          Text('Name:',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 1,
                                                  color: Color.fromARGB(
                                                      0, 255, 255, 255))),
                                                      Text('Roll:',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 1,
                                                  color: Color.fromARGB(
                                                      0, 255, 255, 255))),
                                        ],
                                      ),
                                    ),
                                  ],
                         )
                        )
                      ),
                    ),
                  ),
                ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                          width: 100,
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                width: 250,
                                height: 40,
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
                                    ))),
                            SizedBox(
                              height: 30,
                            )
                                  ],
                                ),
                              ),
                    ),
       ] ),
      ),
    )));
  }
}
