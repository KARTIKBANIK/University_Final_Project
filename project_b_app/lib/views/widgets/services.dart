import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b_app/views/screens/ambulance.dart';
import 'package:project_b_app/views/screens/blood.dart';
import 'package:project_b_app/views/screens/blood_bank.dart';
import 'package:project_b_app/views/screens/consultration.dart';
import 'package:project_b_app/views/widgets/custom_container.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 2.4,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
            color: Colors.black,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Custom_Container(
                    onTap: () {
                      Get.to(Blood_Page());
                    },
                    img: "assets/icons/blood3.png",
                    txt: "Blood",
                    textColor: Colors.black,
                    fs: 15,
                    fw: FontWeight.bold,
                    lspace: 1.5,
                  ),
                  Custom_Container(
                    onTap: () {
                      Get.to(Ambulance());
                    },
                    img: "assets/icons/ambulance.png",
                    txt: "Ambulance",
                    textColor: Colors.black,
                    fs: 15,
                    fw: FontWeight.bold,
                    lspace: 1.5,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Custom_Container(
                      onTap: () {
                        Get.to(Blood_Bank());
                      },
                      img: "assets/icons/blood_bank.png",
                      txt: "Blood Bank",
                      textColor: Colors.black,
                      fs: 15,
                      fw: FontWeight.bold,
                      lspace: 1.5,
                    ),
                    Custom_Container(
                      onTap: () {
                        Get.to(Consultration());
                      },
                      img: "assets/icons/sasto_poramorso.png",
                      txt: "Consulration",
                      textColor: Colors.black,
                      fs: 15,
                      fw: FontWeight.bold,
                      lspace: 1.5,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
