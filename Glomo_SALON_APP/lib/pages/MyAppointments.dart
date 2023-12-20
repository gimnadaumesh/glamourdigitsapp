
import 'package:flutter/material.dart';
import 'package:glamourDigit/uidata.dart';


import '../widgets/image_card.dart';
import '../widgets/my_column.dart';
import '../widgets/specialist_column.dart';

class MyAppointmentPage extends StatefulWidget {
  @override
  _MyAppointmentPageState createState() => _MyAppointmentPageState();
}

class _MyAppointmentPageState extends State<MyAppointmentPage> {
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
      ),
      body:

      Container(
        width: screen_size_width,
        height: screen_size_height,
        padding: EdgeInsets.only(top:16, left:16, right: 16),

        child: SingleChildScrollView(



          child: Column(
            children: <Widget>[

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

                        new SizedBox(
                          width: 100.0,
                          height: 30.0,
                        child:ElevatedButton(
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


                        new SizedBox(
                          width: 100.0,
                          height: 30.0,

                        child:ElevatedButton(
                          onPressed: () {Navigator.pushNamed(context, UIData.loginPageRoute);},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green, // Background color

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),


                          ),
                          child: const Text(
                            'Accepted!',
                            style: TextStyle(color: Colors.black),

                          ),
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


                        new SizedBox(
                          width: 100.0,
                          height: 30.0,

                        child:ElevatedButton(
                          onPressed: () {Navigator.pushNamed(context, UIData.loginPageRoute);},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent, // Background color

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            'Done!',
                            style: TextStyle(color: Colors.black),

                          ),
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

            ],
          ),
        ),
      ),
    );
  }
}
