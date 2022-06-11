import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:njree/Start.dart';

import 'NjreeHome.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 244, 228),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 18.5),
                  child: Padding(
                      padding: EdgeInsets.all(9),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.shopping_bag,
                          size: 33,
                          color: Color.fromARGB(255, 193, 120, 10),
                        ),
                      ))),
            ]),
        body: Center(child: Text("Nothing to see yet!")));
  }
}
