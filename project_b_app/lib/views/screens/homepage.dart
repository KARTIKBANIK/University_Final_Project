import 'package:flutter/material.dart';
import 'package:project_b_app/controllers/custom_text_style.dart';
import 'package:project_b_app/views/widgets/custom_slider.dart';
import 'package:project_b_app/views/widgets/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.red,
        title: CustomTextStyle(
          txt: 'Blood Bank',
          textColor: Colors.black,
          fs: 25,
          fw: FontWeight.bold,
          lspace: 1.5,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomSlider(),
          SizedBox(
            height: 20,
          ),
          Services(),
        ],
      ),
    );
  }
}
