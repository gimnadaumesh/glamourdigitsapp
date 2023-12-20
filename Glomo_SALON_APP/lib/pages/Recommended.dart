
import 'package:flutter/material.dart';

class Recommened extends StatefulWidget {
  @override
  _RecommenedState createState() => _RecommenedState();
}

class _RecommenedState extends State<Recommened> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:

      Container(
        width: screen_size_width,
        height: screen_size_height,
        padding: EdgeInsets.only(top:16, left:6, right: 16),

        child: SingleChildScrollView(



          child: Column(
            children: <Widget>[

              ListTile(
                title: Column(
                  children: [
                    ListTile(
                      leading:Container(
                height: 750,
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'asserts/images/profile.jpg',
                          ),
                          alignment: FractionalOffset.topLeft,
                          fit: BoxFit.fill))),
                      title: const Text('Hair Cut'),
                      subtitle: Column(children: [

                      Row(children: [

                        Text(
                          '40 dollar',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ],),
                        SizedBox(height: 6),
                      Row(children: [

                        InkWell(
                          child: Icon(Icons.access_time),
                          onTap: (){
                            //action code when clicked
                            print("The icon is clicked");
                          },
                        ),



                        Text(
                          '40 Min',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ],),
                      ],),

                ),
                  ],
              ),
              ),


              ListTile(
                title: Column(
                  children: [
                    ListTile(
                      leading:Container(
                          height: 750,
                          width: 150,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    'asserts/images/profile.jpg',
                                  ),
                                  alignment: FractionalOffset.topLeft,
                                  fit: BoxFit.fill))),
                      title: const Text('Body Massage'),
                      subtitle: Column(children: [

                        Row(children: [

                          Text(
                            '40 dollar',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ],),
                        SizedBox(height: 6),
                        Row(children: [

                          InkWell(
                            child: Icon(Icons.access_time),
                            onTap: (){
                              //action code when clicked
                              print("The icon is clicked");
                            },
                          ),



                          Text(
                            '20 Min',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ],),
                      ],),

                    ),
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

