import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'NjreeHome.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 244, 228),
        body: ListView(children: [
          Container(
              //styling
              margin: EdgeInsets.only(left: 60, right: 60, top: 60),
              height: 150,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border:
                    Border.all(width: 0.5, color: Colors.grey.withOpacity(0)),
              ),
              // profile photo
              child: Icon(
                Icons.person_outline,
                size: 90,
                color: Color.fromARGB(255, 193, 120, 10),
              )),
          // name
          Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 88),
                  child: Text(
                    "Sarah",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ))),

          // GridView to list Options
          GridView(
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 5.5,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 20),
              children: [
                Container(
                  margin: EdgeInsets.only(left: 22, right: 22),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(18),
                  child: Row(children: [
                    Icon(Icons.shopping_bag_outlined),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Your Orders",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))
                  ]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22, right: 22),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(18),
                  child: Row(children: [
                    Icon(Icons.location_on_outlined),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Your Address",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))
                  ]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22, right: 22),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(18),
                  child: Row(children: [
                    Icon(Icons.receipt_long_outlined),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Your Invoice",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))
                  ]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                ),
                Container(
                  margin: EdgeInsets.only(left: 22, right: 22),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(18),
                  child: Row(children: [
                    Icon(Icons.credit_card),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Your Saved Card",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: ''),
                        ))
                  ]),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                ),
              ])
        ]));
  }
}
