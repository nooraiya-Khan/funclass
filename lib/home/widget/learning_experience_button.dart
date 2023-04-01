import 'package:flutter/material.dart';

class LearningExperienceButton extends StatelessWidget {
  const LearningExperienceButton({
    super.key,
    required this.onTap,
    required this.title,
  });

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 40,
        width: 170,
        decoration: const BoxDecoration(
          color: Color.fromARGB(152, 131, 46, 184),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
