import 'package:flutter/material.dart';
import 'package:project_b_app/controllers/custom_text_style.dart';

class Custom_Container extends StatelessWidget {
  Custom_Container({
    super.key,
    required this.onTap,
    required this.img,
    required this.txt,
    required this.textColor,
    required this.fs,
    required this.fw,
    required this.lspace,
  });

  VoidCallback onTap;
  String img;
  String txt;
  Color textColor;
  double fs;
  FontWeight fw;
  double lspace;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              img,
              fit: BoxFit.cover,
            ),
            CustomTextStyle(
              txt: txt,
              textColor: textColor,
              fs: fs,
              fw: fw,
              lspace: lspace,
            )
          ],
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 209, 207, 204),
            ),
            BoxShadow(
              color: Colors.white,
              spreadRadius: -1.0,
              blurRadius: 5.0,
            ),
          ],
          border: Border.all(
            width: .5,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
