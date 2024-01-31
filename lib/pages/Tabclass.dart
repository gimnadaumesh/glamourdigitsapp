
import 'package:flutter/material.dart';
import 'package:glamourDigit/pages/page2.dart';
import 'package:glamourDigit/pages/page3.dart';
import 'package:glamourDigit/pages/page4.dart';





class TabClass extends StatefulWidget {
  @override
  _TabClassState createState() => _TabClassState();
}

class _TabClassState extends State<TabClass> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return
      DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Your Bookings'),
            bottom: TabBar(
              tabs: [
                Tab(/*icon: Icon(Icons.contacts),*/ text: "Past"),
                Tab(/*icon: Icon(Icons.camera_alt),*/ text: "Upcoming"),
                Tab(/*icon: Icon(Icons.camera_alt),*/ text: "Favorites")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Page2(),
              Page4(),
              Page3(),
            ],
          ),
        ),
      );
  }
}
