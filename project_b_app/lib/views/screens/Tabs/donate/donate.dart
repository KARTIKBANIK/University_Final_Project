//import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:project_b_app/views/screens/Tabs/donate/donate_insert_page.dart';
import 'package:project_b_app/views/screens/Tabs/donate/donate_update_data.dart';

class DonateScreen extends StatefulWidget {
  @override
  State<DonateScreen> createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
  Query dbRef = FirebaseDatabase.instance.ref().child('Donors');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('Donors');

  Widget listItem({required Map donor}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.yellow[50],
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 7),
          child: Container(
            height: MediaQuery.of(context).size.height / 9,
            child: ListTile(
              leading: CircleAvatar(
                radius: 19,
                child: Text(
                  donor['blood-group'],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              title: Text(
                donor['name'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "AGE : " + donor['age'],
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => UpdateRecord(donorKey: donor['key']),
                    ),
                  );
                },
                icon: Icon(Icons.edit),
              ),
            ),
          ),

          /*  child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  donor['name'],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  donor['blood-group'],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  donor['age'],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  donor['phone'],
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    UpdateRecord(donorKey: donor['key'])));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit,
                            color: Theme.of(context).primaryColor,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                      onTap: () {
                        reference.child(donor['key']).remove();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.red[700],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          
          */
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Get.to(
              InsertData(),
            );
          },
          backgroundColor: Colors.redAccent,
          icon: Icon(Icons.upload),
          label: const Text(
            "Post",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          height: double.infinity,
          child: FirebaseAnimatedList(
            query: dbRef,
            itemBuilder: (BuildContext context, DataSnapshot snapshot,
                Animation<double> animation, int index) {
              Map donor = snapshot.value as Map;
              donor['key'] = snapshot.key;

              return listItem(donor: donor);
            },
          ),
        ));
  }
}
