
import 'package:flutter/material.dart';
import 'package:glamourDigit/pages/SaloonTabs.dart';
import 'package:glamourDigit/pages/Tabclass.dart';
import 'package:glamourDigit/pages/page1.dart';
import 'package:glamourDigit/pages/page2.dart';

class MyBookingPage extends StatefulWidget {
  @override
  _MyBookingPageState createState() => _MyBookingPageState();
}

class _MyBookingPageState extends State<MyBookingPage> {

  int pageIndex = 2;

  final pages = [
    SaloonTabClass(),
    TabClass(),
    Page1(),
   // const Page2(),
   // const Page3(),
   // const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue,
      //   elevation: 0,
      //   title: const Text("Kandy"),
      //   foregroundColor : Colors.black,
      //   centerTitle: false,
      // ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
      //  color: Theme.of(context).primaryColor,
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.search_rounded,
              color: Colors.deepPurple,
              size: 35,
            )
                : const Icon(
              Icons.search_outlined,
              color: Colors.grey,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.line_style_rounded,

              color: Colors.deepPurple,
              size: 35,
            )
                : const Icon(
              Icons.line_style_outlined,
              color: Colors.grey,
              size: 35,
            ),
          ),

          IconButton(
            enableFeedback: false,

            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.person,

              color: Colors.deepPurple,
              size: 35,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.grey,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
