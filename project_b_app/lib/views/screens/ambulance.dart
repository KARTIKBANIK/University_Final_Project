import 'package:flutter/material.dart';
import 'package:project_b_app/controllers/custom_text_style.dart';

class Ambulance extends StatelessWidget {
  const Ambulance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: CustomTextStyle(
          txt: 'Ambulance',
          textColor: Colors.black,
          fs: 17,
          fw: FontWeight.bold,
          lspace: 2,
        ),
      ),
    );
  }
}
