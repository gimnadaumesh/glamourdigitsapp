
import 'package:flutter/material.dart';
import 'package:glamourDigit/uidata.dart';


import '../widgets/image_card.dart';
import '../widgets/my_column.dart';
import '../widgets/specialist_column.dart';

class AppointmentPage extends StatefulWidget {
  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
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
                            'Kandy 123, Kiribathgoda, Peradeniya',
                            style: TextStyle(color: Colors.cyan.withOpacity(0.6)),
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
                            'Kandy 123, Kiribathgoda, Peradeniya',
                            style: TextStyle(color: Colors.cyan.withOpacity(0.6)),
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
                            'Kandy 123, Kiribathgoda, Peradeniya',
                            style: TextStyle(color: Colors.cyan.withOpacity(0.6)),
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
