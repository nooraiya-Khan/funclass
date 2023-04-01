import 'package:demo/lrn4.dart';
import 'package:demo/lrn_three.dart';
import 'package:demo/lrn_two.dart';
import 'package:flutter/material.dart';

import 'widget/learning_experience_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);

  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: screenHeight,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Class Seven",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(152, 131, 46, 184),
                            fontSize: 25,
                          ),
                        ),
                        Text(
                          "Nooraiya Khan",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 25),
                        LearningExperienceButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Lrntwo(),
                              ),
                            );
                          },
                          title: "Learning Experience 2",
                        ),
                        SizedBox(height: 10),
                        LearningExperienceButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Lrnthree(),
                              ),
                            );
                          },
                          title: "Learning Experience 3",
                        ),
                        SizedBox(height: 10),
                        LearningExperienceButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => lrn4(),
                              ),
                            );
                          },
                          title: "Learning Experience 4",
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 0,
                    child: SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "App Logo Designer ",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "Masud Hasan Suheb, Class : 7",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "School: Scholarshome South Surma Campus",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
