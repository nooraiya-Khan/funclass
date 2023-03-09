import 'package:demo/classsix.dart';
import 'package:flutter/material.dart';

import 'class seven.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Classseven()));
                  },
                  child: Container(
                    height: 50,
                    margin:
                        const EdgeInsets.only(top: 400, left: 20, right: 20),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(152, 131, 46, 184),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "Class Seven ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Classsix()));
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(152, 131, 46, 184),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "Class Six ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
