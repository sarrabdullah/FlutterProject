import 'package:flutter/material.dart';
import 'package:njree/NjreeProfile.dart';
import 'package:njree/ShoppingCart.dart';
import 'Start.dart';
import 'NjreeHome.dart';

void main() {
  runApp(const Opening());
}

class Opening extends StatefulWidget {
  const Opening({Key? key}) : super(key: key);

  @override
  State<Opening> createState() => _OpeningState();
}

class _OpeningState extends State<Opening> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Start(),
      theme: ThemeData.light(),
    );
  }
}
