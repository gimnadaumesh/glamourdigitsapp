import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class OwnerRegisterPage extends StatefulWidget {
  @override
  _OwnerRegisterPageState createState() => _OwnerRegisterPageState();
}

class _OwnerRegisterPageState extends State<OwnerRegisterPage> {
  List<File> selectedImages = [];
  final picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: const Text("Register"),
          foregroundColor : Colors.black,
          centerTitle: true,
        ),



      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      maxLines: 1, //or null
                      validator: ((value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter some text';
                        } else if (value.length < 5) {
                          return 'Enter atleast 5 Charecter';
                        }

                        return null;
                      }),


                      decoration: InputDecoration(
                          hintText: 'Salon Owner Name',
                        //  labelText: 'Name',
                         /* prefixIcon: Icon(
                            Icons.person,
                            color: Colors.green,
                          ),*/
                          errorStyle: TextStyle(fontSize: 18.0 ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: 'Salon Name',
                        //  labelText: 'Email',
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: 'Email address',
                          //  labelText: 'Email',
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: 'Password',
                         // labelText: 'Password',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9)))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLines: 5, //or null
                      decoration: InputDecoration(
                          hintText: 'About salon',
                          //  labelText: 'Email',
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      maxLines: 5, //or null
                      decoration: InputDecoration(
                          hintText: 'Salon address',
                          //  labelText: 'Email',
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: 'Phone',
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: 'Location',
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ),


                  Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                          child: ElevatedButton(
                            child: Text(
                              'Continue',
                              style: TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/ProductUploadPageRoute");
                            },
                          
                          ),

                          width: MediaQuery.of(context).size.width,

                          height: 50,
                        ),
                      )),
                ],
              )),
        ),
      ));
  }

}
