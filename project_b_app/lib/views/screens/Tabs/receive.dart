import 'package:flutter/material.dart';
import 'package:project_b_app/controllers/custom_text_style.dart';

class ReceiveScreen extends StatelessWidget {
  const ReceiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   backgroundColor: Colors.redAccent,
      //   icon: Icon(Icons.upload),
      //   label: Text(
      //     "Post",
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      body: Center(
        child: CustomTextStyle(
          txt: "This is RECEIVE page",
          textColor: Colors.black,
          fs: 20,
          fw: FontWeight.bold,
          lspace: 1,
        ),
      ),
    );
  }
}
