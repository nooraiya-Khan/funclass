import 'package:demo/pt_two.dart';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Onesessiontwo extends StatefulWidget {
  const Onesessiontwo({super.key});

  @override
  State<Onesessiontwo> createState() => _OnesessiontwoState();
}

class _OnesessiontwoState extends State<Onesessiontwo> {
  final videoURL = "https://www.youtube.com/watch?v=J-PYuZOPrzI";
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

  bool isNameBlank = false;
  bool isNationalityBlank = false;
  bool isAddressBlank = false;
  bool isMobileNumberBlank = false;
  bool isPhoneInvalid = false;
  bool isEmailBlank = false;
  bool isEmailInvalid = false;
  bool isProductDescriptionBlank = false;
  bool isSigBlank = false;

  String nameOkMsg = "Name field is empty!",
      nationalityOkMsg = "Nationality field is empty!",
      addressOkMsg = "Address field is empty!",
      mobileOKMsg = "Mobile number field is empty!",
      emailOkmsg = "Email field is Empty!",
      sigOkmsg = "This field is empty!",
      emailinvalidmsg = "Enter valid E-mail!",
      descriptionOkmsg = "Product description field is empty!";

  var child;
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController mobilenumbercontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController nationalitycontroller = new TextEditingController();
  TextEditingController addresscontroller = new TextEditingController();
  TextEditingController descriptioncontroller = new TextEditingController();

  TextEditingController nidnumbercontroller = new TextEditingController();
  TextEditingController sigcontroller = new TextEditingController();
  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 1);
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
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Session 2 : Protecting the rights of the copyright owner.",
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
                    margin: EdgeInsets.only(right: 170),
                    child: Text(
                      "Who is copyright owner?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 3, bottom: 3),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Once you create an original work and fix it,you are the author and the owner.",
                      style: TextStyle(
                          color: Color.fromARGB(255, 158, 158, 158),
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 205),
                    child: Text(
                      "What is Trademark?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5, top: 3, bottom: 3),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Trademark is an unique logo or name of slogan that can differentiate intellectual property from the similar property .As a result no one can make fake copies of their intellectual property  and market it as per their wish ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 158, 158, 158),
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Image.asset("assets/trademark.jpg"),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      "But how can we register the trademark?",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  Container(),
                  Container(
                    child: Text(
                      "let's watch a video!!",
                      style: TextStyle(
                          color: Color.fromARGB(255, 131, 46, 184), fontSize: 18),
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
                    height: 30,
                  ),
                  Text(
                    "You can also visit the official website (dpdt.gov.bd) for trademark registration",
                    textAlign: TextAlign.center,
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
                  Container(
                    child: Text("Let's register a trademark."),
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
                          child: TextField(
                            controller: namecontroller,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Type Applicant's Name...",
                                hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                                labelText: "Enter Your Name. ",
                                labelStyle: TextStyle(
                                    color: Color.fromARGB(152, 131, 46, 184),
                                    fontWeight: FontWeight.w300)),
                          ),
                        ),
                        isNameBlank
                            ? Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.error_outline,
                                      color: Colors.redAccent,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      nameOkMsg,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.redAccent),
                                    )
                                  ],
                                ),
                              )
                            : Container(),
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
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.1),
                                    borderRadius: BorderRadius.circular(7),
                                    color: Colors.grey[100]),
                                child: TextField(
                                  controller: nationalitycontroller,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Type Applicant's Nationality...",
                                      hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w300),
                                      labelText: "Enter Your Nationality.",
                                      labelStyle: TextStyle(
                                          color:
                                              Color.fromARGB(152, 131, 46, 184),
                                          fontWeight: FontWeight.w300)),
                                ),
                              ),
                              isNationalityBlank
                                  ? Container(
                                      margin: EdgeInsets.only(top: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.error_outline,
                                            color: Colors.redAccent,
                                            size: 17,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            nationalityOkMsg,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                color: Colors.redAccent),
                                          )
                                        ],
                                      ),
                                    )
                                  : Container(),
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
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius: BorderRadius.circular(7),
                                          color: Colors.grey[100]),
                                      child: TextField(
                                        controller: addresscontroller,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Type  Address...",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300),
                                            labelText: "Enter Your Address.",
                                            labelStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    152, 131, 46, 184),
                                                fontWeight: FontWeight.w300)),
                                      ),
                                    ),
                                    isAddressBlank
                                        ? Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.error_outline,
                                                  color: Colors.redAccent,
                                                  size: 17,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  addressOkMsg,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.redAccent),
                                                )
                                              ],
                                            ),
                                          )
                                        : Container(),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius: BorderRadius.circular(7),
                                          color: Colors.grey[100]),
                                      child: TextField(
                                        controller: mobilenumbercontroller,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText:
                                                "Type Applicant's Phone Number...",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300),
                                            labelText: "Enter Your Phone Number.",
                                            labelStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    152, 131, 46, 184),
                                                fontWeight: FontWeight.w300)),
                                      ),
                                    ),
              
                                    isMobileNumberBlank
                                        ? Container(
                                            //   margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.error_outline,
                                                  color: Colors.redAccent,
                                                  size: 17,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  mobileOKMsg,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.redAccent),
                                                )
                                              ],
                                            ),
                                          )
                                        : Container(),
                                    //             SizedBox(height: 5,),
                                    //             Container(
                                    //             margin: EdgeInsets.only(right: 20,top: 2),
                                    //             alignment: Alignment.centerRight,
                                    //             child: Text(
                                    //               "${phone.length}/11",
                                    //               textAlign: TextAlign.left,
                                    //               style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w300),
                                    //   ),
                                    // ),
              
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius: BorderRadius.circular(7),
                                          color: Colors.grey[100]),
                                      child: TextField(
                                        controller: emailcontroller,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText:
                                                "Type Applicant's E-mail...",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 15,
                                                fontWeight: FontWeight.w300),
                                            labelText: "Enter Your E-mail. ",
                                            labelStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    152, 131, 46, 184),
                                                fontWeight: FontWeight.w300)),
                                      ),
                                    ),
                                    isEmailBlank
                                        ? Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.error_outline,
                                                  color: Colors.redAccent,
                                                  size: 17,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  emailOkmsg,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.redAccent),
                                                )
                                              ],
                                            ),
                                          )
                                        : Container(),
                                    isEmailInvalid
                                        ? Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.error_outline,
                                                  color: Colors.redAccent,
                                                  size: 17,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  emailinvalidmsg,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.redAccent),
                                                )
                                              ],
                                            ),
                                          )
                                        : Container(),
              
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 0.1),
                                          borderRadius: BorderRadius.circular(7),
                                          color: Colors.grey[100]),
                                      child: TextField(
                                        controller: descriptioncontroller,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText:
                                                "Type Product Description...",
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                color: Colors.grey,
                                                fontSize: 15),
                                            labelText:
                                                "Enter Product Description.",
                                            labelStyle: TextStyle(
                                                color: Color.fromARGB(
                                                    152, 131, 46, 184),
                                                fontWeight: FontWeight.w300)),
                                      ),
                                    ),
                                    isProductDescriptionBlank
                                        ? Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.error_outline,
                                                  color: Colors.redAccent,
                                                  size: 17,
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  descriptionOkmsg,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w300,
                                                      color: Colors.redAccent),
                                                )
                                              ],
                                            ),
                                          )
                                        : Container(),
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
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            padding:
                                                EdgeInsets.fromLTRB(10, 0, 0, 0),
                                            margin:
                                                EdgeInsets.fromLTRB(20, 0, 20, 0),
                                            decoration: BoxDecoration(
                                                border: Border.all(width: 0.1),
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                                color: Colors.grey[100]),
                                            child: TextField(
                                              controller: sigcontroller,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText:
                                                      "Type Applicant's Signature and date...",
                                                  hintStyle: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w300),
                                                  labelText:
                                                      "Enter the date and signature.",
                                                  labelStyle: TextStyle(
                                                      color: Color.fromARGB(
                                                          152, 131, 46, 184),
                                                      fontWeight:
                                                          FontWeight.w300)),
                                            ),
                                          ),
                                          isSigBlank
                                              ? Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    children: [
                                                      Icon(
                                                        Icons.error_outline,
                                                        color: Colors.redAccent,
                                                        size: 17,
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      Text(
                                                        sigOkmsg,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color:
                                                                Colors.redAccent),
                                                      )
                                                    ],
                                                  ),
                                                )
                                              : Container(),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                if (namecontroller.text == "") {
                                                  isNameBlank = true;
                                                  isNationalityBlank = false;
                                                  isAddressBlank = false;
                                                  isMobileNumberBlank = false;
                                                  isEmailBlank = false;
                                                  isEmailInvalid = false;
                                                  isProductDescriptionBlank =
                                                      false;
                                                  isSigBlank = false;
                                                  nameOkMsg;
                                                } else if (nationalitycontroller
                                                        .text ==
                                                    "") {
                                                  isNameBlank = false;
                                                  isNationalityBlank = true;
                                                  isAddressBlank = false;
                                                  isMobileNumberBlank = false;
                                                  isEmailBlank = false;
                                                  isEmailInvalid = false;
                                                  isProductDescriptionBlank =
                                                      false;
                                                  isSigBlank = false;
                                                  nationalityOkMsg;
                                                } else if (addresscontroller
                                                        .text ==
                                                    "") {
                                                  isNameBlank = false;
                                                  isNationalityBlank = false;
                                                  isAddressBlank = true;
                                                  isMobileNumberBlank = false;
                                                  isEmailBlank = false;
                                                  isEmailInvalid = false;
                                                  isProductDescriptionBlank =
                                                      false;
                                                  isSigBlank = false;
                                                  addressOkMsg;
                                                } else if (mobilenumbercontroller
                                                        .text ==
                                                    "") {
                                                  isNameBlank = false;
                                                  isNationalityBlank = false;
                                                  isAddressBlank = false;
                                                  isMobileNumberBlank = true;
                                                  isEmailBlank = false;
                                                  isEmailInvalid = false;
                                                  isProductDescriptionBlank =
                                                      false;
                                                  isSigBlank = false;
                                                  mobileOKMsg;
                                                } else if (emailcontroller.text ==
                                                    "") {
                                                  isNameBlank = false;
                                                  isNationalityBlank = false;
                                                  isAddressBlank = false;
                                                  isMobileNumberBlank = false;
                                                  isEmailBlank = true;
                                                  isEmailInvalid = false;
                                                  isProductDescriptionBlank =
                                                      false;
                                                  isSigBlank = false;
                                                  emailOkmsg;
                                                } else if (!emailcontroller.text
                                                        .contains("@") ||
                                                    !emailcontroller.text
                                                        .contains(".")) {
                                                  isNameBlank = false;
                                                  isNationalityBlank = false;
                                                  isAddressBlank = false;
                                                  isMobileNumberBlank = false;
                                                  isEmailBlank = false;
                                                  isEmailInvalid = true;
                                                  isProductDescriptionBlank =
                                                      false;
                                                  isSigBlank = false;
                                                  emailinvalidmsg;
                                                } else if (descriptioncontroller
                                                        .text ==
                                                    "") {
                                                  isNameBlank = false;
                                                  isNationalityBlank = false;
                                                  isAddressBlank = false;
                                                  isMobileNumberBlank = false;
                                                  isEmailBlank = false;
                                                  isEmailInvalid = false;
                                                  isProductDescriptionBlank =
                                                      true;
                                                  isSigBlank = false;
                                                  descriptionOkmsg;
                                                } else if (sigcontroller.text ==
                                                    "") {
                                                  isNameBlank = false;
                                                  isNationalityBlank = false;
                                                  isAddressBlank = false;
                                                  isMobileNumberBlank = false;
                                                  isEmailBlank = false;
                                                  isEmailInvalid = false;
                                                  isProductDescriptionBlank =
                                                      false;
                                                  isSigBlank = true;
                                                  sigOkmsg;
                                                } else {
                                                  isNameBlank = false;
                                                  isMobileNumberBlank = false;
                                                  isPhoneInvalid = false;
                                                  isEmailBlank = false;
                                                  isNationalityBlank = false;
                                                  isAddressBlank = false;
                                                  isProductDescriptionBlank =
                                                      false;
                                                  isSigBlank = false;
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              pttwo()));
                                                }
                                              });
                                            },
                                            child: Container(
                                              margin: EdgeInsets.only(
                                                  bottom: 20,
                                                  left: 20,
                                                  right: 20),
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Color.fromARGB(
                                                      152, 131, 46, 184)),
                                              child: Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Text(
                                                        "Next",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: Colors.white,
                                                            fontSize: 16),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 3,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]))
                      ]))
                ]),
              ),
            )));
  }
}
