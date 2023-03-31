import 'package:demo/class_six.dart';
import 'package:demo/lrn4.dart';
import 'package:demo/lrn_three.dart';
import 'package:demo/lrn_two.dart';
import 'package:flutter/material.dart';

import 'class_seven.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Tween<double> _scaleTween = Tween<double>(begin:0, end: 1);

  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: TweenAnimationBuilder(
               tween: _scaleTween,
              duration: Duration(milliseconds: 600),
              builder: (context, scale, child) {
          return Transform.scale(
            scale: scale,
            child: child,);},
            child: Container(
              child: Column(
              //  mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 300,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                        //  padding: EdgeInsets.only(
                             // left: 10, right: 220, top: 30, bottom: 5),
                          child: Text(
                            "Class Seven",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(152, 131, 46, 184),
                                fontSize: 25),
                          ),
                        ),
                        Container(
                          //padding: EdgeInsets.only(right: 210),
                          child: Text(
                            "Nooraiya Khan",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300,
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Lrntwo()));
                          },
                          child: Container(
                            //padding: EdgeInsets.only(top: 10, left: 10,right: 10,
                            //bottom: 10),
                            height: 40,
                            width: 170,
                           //
                           //
                            //width: 400,
                          //  margin: const EdgeInsets.only(
                                //top: 10, left: 10, right: 160,bottom: 10),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(152, 131, 46, 184),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                              child: Text(
                                "Learning Experience 2  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Lrnthree()));
                          },
                          child: Container(
                           // padding: EdgeInsets.only(top: 10, left: 10,bottom: 10,right: 10,),
                             height: 40,
                            width: 170,
                           // margin: const EdgeInsets.only(
                                //top: 10, left: 10, right: 160, bottom: 0),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(152, 131, 46, 184),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                              child: Text(
                                "Learning Experience 3  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                         GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => lrn4()));
                          },
                          child: Container(
                           // padding: EdgeInsets.only(top: 10, left: 10,bottom: 10,right: 10),
                            height: 40,
                            width: 170,
                          //  margin: const EdgeInsets.only(
                                //top: 10, left: 10, right: 160, bottom: 20),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(152, 131, 46, 184),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                              child: Text(
                                "Learning Experience 4  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 250,),
            Column(
              children: [
                Row(
                  children: [
                    Container(child: Icon(Icons.info_outline,size: 15,color: Colors.grey,),),
                    Container(
                      margin: EdgeInsets.only(left: 0,right: 0),
                      child: Center(
                        child: Text("App Logo Designer : Masud Hasan Suheb,Class : 7,",
                        maxLines: 2,
                        style: TextStyle(color: Colors.grey),
                        
                        ),
                      )),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 30),
                  child: Text("School: Scholarshome South Surma Campus.",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),))
              ],
            ),
             
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
            
          ),
        ));
  }
}
