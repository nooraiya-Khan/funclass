import 'package:camera/camera.dart';
import 'package:demo/camera.dart';
import 'package:demo/lrnthree.dart';
import 'package:demo/pt3.dart';
import 'package:demo/threesessionone.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Onesessionfive extends StatefulWidget {
  const Onesessionfive({super.key});

  @override
  State<Onesessionfive> createState() => _OnesessionfiveState();
}

class _OnesessionfiveState extends State<Onesessionfive> {
  bool isNameBlank = false;
  bool isProductDescriptionBlank = false;
  bool isterms = false;
  String nameOkMsg = "This field is empty!",
      descriptionOkmsg = "Product description field is empty!",
      termsOKmsg = "This field is empty";

  var child;
  TextEditingController textdata = new TextEditingController();
  
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
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 2, color: Color.fromARGB(152, 131, 46, 184))),
              child: Text(
                "Session 5 : Let's make intellectual property suitable for commercial work . ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(152, 131, 46, 184),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.all(7),
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(152, 131, 46, 184))),
                child: Text(
                  "Find an intellectual property in your area. We will find many intellectual properties such as - a particular local food, traditional house or place, song, poem, dance, sound or language or a musical instrument etc.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 158, 158, 158), fontSize: 18),
                )),
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
                Container(
                  margin: EdgeInsets.only(left: 3,right: 3),
                  child: Text("Enter the name, description, terms and conditions of your chosen intellectual property",textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                  
                  ),
                ),
                SizedBox(height: 30,),
                  Container(
                  margin: EdgeInsets.only(left: 120,),
                  child: Center(
                    child: Row(
                      children: [
                        Text("Write it here ",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22,color: Colors.grey),
                        
                        ),
                        Icon(Icons.arrow_drop_down,color: Color.fromARGB(152, 131, 46, 184),size: 40,)
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                Container(
                    // height: 100,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(children: <Widget>[
                      Container(
                        
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        decoration: BoxDecoration(
                            border: Border.all(width: 0.1),
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.grey[100]),
                        child: SizedBox(
                          height: 3000,
                          child: TextField(
                            maxLines: 2000,
                          controller: textdata,
                        decoration: InputDecoration(
                          label: Text.rich(
                            textAlign: TextAlign.start,
                            TextSpan(
                             
                              children: <InlineSpan>[
                                WidgetSpan(
                                  child: Text(
                                   
                                    'Ans:',textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 1,color: Color.fromARGB(0, 255, 255, 255))),
                                    
                                  ),
                              
                              
                              ],
                            ),
                          ),
                        ),
                      ),
                        ),
                      ),
                  
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          // height: 100,
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
                              // height: 100,
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

                                onPressed: ()async{
                                  if(textdata.value.text.isNotEmpty){
                                    await Share.share(textdata.text);
                                    
                                  }
                                  
                                }
                              , child: const Text("Send",style: TextStyle(color: Colors.white),))  ),
                             
                              SizedBox(height: 30,)]))]))]
                              
                              )),
                               bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Lrnthree()));
        },
        child: Container(
          height: 53,
          color: Color.fromARGB(152, 131, 46, 184),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 50)),
              Text(
                "Go to Learning Experience:3  ",
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
