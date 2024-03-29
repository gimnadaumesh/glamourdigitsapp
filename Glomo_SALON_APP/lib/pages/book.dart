import 'package:flutter/material.dart';

import '../uidata.dart';
import '../widgets/date_column.dart';
import '../widgets/specialist_column_book.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    //buttonTime
    Widget buttonTime(timeText, btnBg, timeBtnColor) {
      return Container(
        height: 42,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: TextButton(
           
            onPressed: () {},
            child: Text(timeText,
                style: TextStyle(
                    color: timeBtnColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15))),
      );
    }

    return Scaffold(
      backgroundColor: UIData.mainColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () => Navigator.pop(context)),
        title: const Text("Book Appointment"),
      ),
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  color: UIData.mainColor,
                  width: screen_size_width,
                  child: Column(children: <Widget>[
                    //SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: const Icon(Icons.chevron_left, color: Colors.white),
                            onPressed: () {}),
                        const Expanded(
                          child: Text("July, 2020",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                        ),
                        IconButton(
                            icon:
                                const Icon(Icons.chevron_right, color: Colors.white),
                            onPressed: () {
                              
                            }),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          DateColumn(
                              weekDay: "Mon",
                              date: "16",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Tue",
                              date: "17",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Wed",
                              date: "18",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Thu",
                              date: "19",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Fri",
                              date: "20",
                              dateBg: Colors.white,
                              dateTextColor: UIData.mainColor),
                          DateColumn(
                              weekDay: "Sat",
                              date: "21",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                          DateColumn(
                              weekDay: "Sun",
                              date: "22",
                              dateBg: Colors.transparent,
                              dateTextColor: Colors.white),
                        ]),
                    const SizedBox(height: 15),
                  ])),
              Container(
                  width: screen_size_width,
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 18),
                      const Text("Available Slot", style: TextStyle(fontSize: 16)),
                      const SizedBox(height: 18),
                      Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          runSpacing: 15,
                          spacing: 2,
                          children: <Widget>[
                            buttonTime("9:30 - 10:30 AM", Colors.white, Colors.black54),
                            buttonTime(
                                "10:30 - 11:45 AM", UIData.mainColor, Colors.white),
                            buttonTime(
                                "12:00 - 1:30 PM", Colors.white, Colors.black54),
                            buttonTime(
                                "2:00 - 4:30 PM", Colors.white, Colors.black54),
                            buttonTime(
                                "5:30 - 6:30 PM", Colors.white, Colors.black54),
                            buttonTime(
                                "6:30 - 7:30 PM", Colors.white, Colors.black54),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text("Choose Hair Specialists",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
              const SizedBox(height: 10),
              Container(
                  height: 140,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      SpecialistColumnBook(
                          specImg: "asserts/images/braid2.jpg", specName: "Anny Roy"),
                      SizedBox(width: 25),
                      SpecialistColumnBook(
                          specImg: "asserts/images/profile.jpg", specName: "Joy Roy"),
                      SizedBox(width: 25),
                      SpecialistColumnBook(
                          specImg: "asserts/images/braid3.jpg",
                          specName: "Patience Roy"),
                    ],
                  ))
                    ],
                  )),
                  const SizedBox(height: 10),
                  
            const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
