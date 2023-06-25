import 'package:flutter/material.dart';
import 'package:project_b_app/controllers/custom_text_style.dart';
import 'package:project_b_app/views/screens/Tabs/donate/donate.dart';
import 'package:project_b_app/views/screens/Tabs/receive.dart';

class Blood_Page extends StatefulWidget {
  const Blood_Page({super.key});

  @override
  State<Blood_Page> createState() => _Blood_PageState();
}

class _Blood_PageState extends State<Blood_Page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                child: CustomTextStyle(
                  txt: "Receive",
                  textColor: Colors.white,
                  fs: 20,
                  fw: FontWeight.bold,
                  lspace: .5,
                ),
              ),
              Tab(
                child: CustomTextStyle(
                  txt: "Donate",
                  textColor: Colors.white,
                  fs: 20,
                  fw: FontWeight.bold,
                  lspace: .5,
                ),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          title: CustomTextStyle(
            txt: 'Blood',
            textColor: Colors.black,
            fs: 19,
            fw: FontWeight.bold,
            lspace: 2,
          ),
        ),
        body: TabBarView(
          children: [
            ReceiveScreen(),
            DonateScreen(),
            // FetchData(),
          ],
        ),
        /*  body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 15,
              ),
              child: Custom_Container__2(
                onTap: () {},
                h: MediaQuery.of(context).size.height / 3.5,
                w: MediaQuery.of(context).size.width / 1,
                img: "assets/images/blood_donor.png",
                txt: "Donor",
                textColor: Colors.black,
                fs: 30,
                fw: FontWeight.bold,
                lspace: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 15,
                right: 15,
              ),
              child: Custom_Container__2(
                onTap: () {},
                h: MediaQuery.of(context).size.height / 3.5,
                w: MediaQuery.of(context).size.width / 1,
                img: "assets/images/blood_receiver.png",
                txt: "Receiver",
                textColor: Colors.black,
                fs: 30,
                fw: FontWeight.bold,
                lspace: 1,
              ),
            ),
          ],
        ),
       
       */
      ),
    );
  }
}
