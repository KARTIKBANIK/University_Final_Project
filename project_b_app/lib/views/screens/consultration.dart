import 'package:flutter/material.dart';
import 'package:project_b_app/controllers/custom_text_style.dart';

class Consultration extends StatelessWidget {
  const Consultration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: CustomTextStyle(
          txt: 'Consultration',
          textColor: Colors.black,
          fs: 17,
          fw: FontWeight.bold,
          lspace: 2,
        ),
      ),
    );
  }
}
