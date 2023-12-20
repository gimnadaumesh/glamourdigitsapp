import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: const Text("It's Nail day"),
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
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 150,
                        //decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(40),
                        //border: Border.all(color: Colors.blueGrey)),
                        child: Image.asset('asserts/images/main.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      validator: ((value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter some text';
                        } else if (value.length < 5) {
                          return 'Enter atleast 5 Charecter';
                        }

                        return null;
                      }),


                      decoration: InputDecoration(
                          hintText: 'Name',
                          labelText: 'Name',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
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
                          hintText: 'Email',
                          labelText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.lightBlue,
                          ),
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
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9)))),
                    ),
                  ),
                  Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                          child: ElevatedButton(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            onPressed: () {
                              if (true) {
                                print('form submiitted');
                              }
                            },
                          
                          ),

                          width: MediaQuery.of(context).size.width,
                          height: 50,
                        ),
                      )),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Center(
                        child: Text(
                          '------------------------OR-------------------------',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child :Center(child:new InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/loginPageRoute");
                          },
                          child: new Padding(
                            padding: new EdgeInsets.only(left: 80,top: 10,right: 0,bottom: 0),
                            child:Center(child:Row(children: [
                              new Text("I already have an account"),
                              new Text("Sign In",  textAlign: TextAlign.center,style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue)),
                            ],),),


                          ),
                        ),
                        ),
                      ),
                    ),),





          Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                      child :Center(child:new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/ownerregisterPageRoute");
                        },
                        child: new Padding(
                          padding: new EdgeInsets.only(left: 100,top: 10,right: 0,bottom: 0),
                          child:Center(child:Row(children: [
                            new Text("register as owner"),
                            new Text("Register",  textAlign: TextAlign.center,style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue)),
                          ],),),


                        ),
                      ),
                    ),
                  ),
              ),),


                ],
              )),
        ),
      ));
  }
}