import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:njree/NjreeProfile.dart';

import 'NjreeHome.dart';
import 'ShoppingCart.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  // indexing navigation bar
  int selectedIndex = 0;
  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

    // animating the movment
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 600), curve: Curves.ease);
  }

// set a controller to use it in the PageView
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
          Padding(
              padding: const EdgeInsets.only(right: 18.5),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Cart())));
                  },
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    size: 33,
                    color: Color.fromARGB(255, 193, 120, 10),
                  ))),
        ]),
        extendBody: true, // solves the problem of unWanted background
        // when you rounding the navigation bar edges
        backgroundColor: Color.fromARGB(255, 249, 244, 228),
        // animating pages
        body: PageView(controller: pageController, children: [
          Profile(),
          Njree(),
        ]),

        // NavigationBar
        bottomNavigationBar: Container(

            // BORDERing
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30))),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
              // end of BORDERing
              ,
              //styling navigation
              child: BottomNavigationBar(
                currentIndex: selectedIndex,
                selectedItemColor: Colors.orange,
                unselectedItemColor: Colors.orange.withOpacity(0.5),
                onTap: onTapped,
                iconSize: 33,
                selectedFontSize: 10,
                showSelectedLabels: false,
                showUnselectedLabels: false,

// Items of the navigation bar
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_outline,
                      ),
                      label: 'Profile',
                      tooltip: ''),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home_outlined,
                      ),
                      label: 'Home',
                      tooltip: '')
                ],
              ),
            )));
  }
}
