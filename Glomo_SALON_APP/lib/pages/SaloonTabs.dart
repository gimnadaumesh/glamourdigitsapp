
import 'package:flutter/material.dart';
import 'package:glamourDigit/pages/Packages.dart';
import 'package:glamourDigit/pages/Recommended.dart';
import 'package:glamourDigit/pages/page2.dart';
import 'package:glamourDigit/pages/page3.dart';
import 'package:glamourDigit/pages/page4.dart';





class SaloonTabClass extends StatefulWidget {
  @override
  _SaloonTabState createState() => _SaloonTabState();
}

class _SaloonTabState extends State<SaloonTabClass> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return
      DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Saloon Details'),

            bottom: TabBar(
              tabs: [
                Tab(/*icon: Icon(Icons.contacts),*/ text: "Recommended"),
                Tab(/*icon: Icon(Icons.camera_alt),*/ text: "Packages"),
                Tab(/*icon: Icon(Icons.camera_alt),*/ text: "FaceCare"),
               // Tab(/*icon: Icon(Icons.camera_alt),*/ text: "Details")
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Recommened(),
              Packages(),
              Page3(),
            ],
          ),
        ),
      );
  }
}