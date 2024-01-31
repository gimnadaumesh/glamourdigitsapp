
import 'package:flutter/material.dart';
import 'package:glamourDigit/pages/MyAppointments.dart';
import 'package:glamourDigit/pages/ProductUpload.dart';
import 'package:glamourDigit/uidata.dart';


import '../widgets/image_card.dart';
import '../widgets/my_column.dart';
import '../widgets/specialist_column.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
            title: const Text("Kandy"),
        foregroundColor : Colors.black,
        centerTitle: false,
        leading: IconButton(
            icon: Icon(Icons.short_text, color: Colors.black87),
            onPressed: () {}),
        actions: <Widget>[
          Container(
            decoration: BoxDecoration(),
            margin: EdgeInsets.only(right: 15, top: 15),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                "asserts/images/profile.jpg",
              ),
            ),
          ),
        ],
      ),
      body:

    Container(
    width: screen_size_width,
    height: screen_size_height,
    padding: EdgeInsets.only(top:16, left:16, right: 16),

      child: SingleChildScrollView(



          child: Column(
            children: <Widget>[

              Row(
          mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Text("Today's Top Picks",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600))),
                TextButton(
                    onPressed: () { Navigator.pushNamed(context, UIData.MybookPageRoute);},
                    child: Text("View All",
                        style: TextStyle(color: Colors.black54)))
              ]),


              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.scannerPageRoute),
                      child: MyColumn(
                        columnImg: "asserts/images/braid.png",
                        columnTxt: "Braids",
                        columnBg: UIData.lightColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.scannerPageRoute),
                      child: MyColumn(
                        columnImg: "asserts/images/abuja.png",
                        columnTxt: "Abuja",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "asserts/images/blow.png",
                        columnTxt: "Blowdry",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.scannerPageRoute),
                      child: MyColumn(
                        columnImg: "asserts/images/haircut.png",
                        columnTxt: "Haircut",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.scannerPageRoute),
                      child: MyColumn(
                        columnImg: "asserts/images/relaxer.png",
                        columnTxt: "Relaxer",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.scannerPageRoute),
                      child: MyColumn(
                        columnImg: "asserts/images/shampoo.png",
                        columnTxt: "Shampoo",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.scannerPageRoute),
                      child: MyColumn(
                        columnImg: "asserts/images/nail.png",
                        columnTxt: "Manicure",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.scannerPageRoute),
                      child: MyColumn(
                        columnImg: "asserts/images/more.png",
                        columnTxt: "More",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Ongoing Appointments",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    TextButton(
                        onPressed: () { Navigator.pushNamed(context, UIData.appointmentPageRoute);},
                        child: Text("View All",
                            style: TextStyle(color: Colors.black54)))
                  ]),


              SizedBox(height: 6),



              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                radius: 52,
                  backgroundImage: AssetImage(
                    "asserts/images/profile.jpg",
                  ),
                ),
                      title: const Text('Full colour red pattern design'),
                      subtitle: Text(
                        'The red pattern in kany',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),



        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text(
                            '12/12/2024 at 9.30am',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ),


                          ElevatedButton(
                            onPressed: () {Navigator.pushNamed(context, UIData.loginPageRoute);},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange, // Background color

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),


                            ),
                            child: const Text(
                              'Pending!',
                              style: TextStyle(color: Colors.black),

                            ),
                          ),



              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'RS :6000',
                  style: TextStyle(color: Colors.cyan.withOpacity(1.0)),
                ),
              ),


                     ], ),





                  ],
                ),
              ),


              SizedBox(height: 6),

              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.cyanAccent, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => MyAppointmentPage()));
                  },
                  child: const Text(
                    'Make Your Appointment Today->',
                    style: TextStyle(color: Colors.black, fontSize: 14,fontWeight: FontWeight.w800),
                  ),
                ),
              ),






              SizedBox(height: 6),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Saloons",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    TextButton(
                        onPressed: () {Navigator.push(
                          //  context, MaterialPageRoute(builder: (_) => SaloonTabClass()));},
                            context, MaterialPageRoute(builder: (_) => ProductUpload()));},
                        child: Text("View All",
                            style: TextStyle(color: Colors.black54)))
                  ]),
              SizedBox(height: 6),
              Container(
                  height: 230,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      SpecialistColumn(
                          specImg: "asserts/images/braid2.jpg", specName: "Anny Roy",),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "asserts/images/profile.jpg", specName: "Joy Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "asserts/images/braid3.jpg",
                          specName: "Patience Roy", ),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "asserts/images/braid2.jpg", specName: "Anny Roy", ),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "asserts/images/braid2.jpg", specName: "Anny Roy", ),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "asserts/images/braid2.jpg", specName: "Anny Roy", ),
                    ],
                  )),


              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Most popular around you(20+)",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    TextButton(
                        onPressed: () {},
                        child: Text("View All",
                            style: TextStyle(color: Colors.black54)))
                  ]),





              Container(
                  height: screen_size_height * .2,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ImageCard(cardImg: "asserts/images/braid4.jpg"),
                      SizedBox(width: 10),
                      ImageCard(cardImg: "asserts/images/braid3.jpg"),
                    ],
                  )),




            ],
          ),
        ),
      ),
    );
  }
}
