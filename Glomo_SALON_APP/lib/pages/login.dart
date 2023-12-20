import 'package:flutter/material.dart';

import 'home.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 150,
                      /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                      child: Image.asset('asserts/images/main.png')),
                ),
              ),
              const Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                      hintText: 'Enter valid email id as abc@gmail.com'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(

                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
              TextButton(
                onPressed: (){
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),


              Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child :Center(child:new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/registerPageRoute");
                      },
                      child: new Padding(
                        padding: new EdgeInsets.only(left: 100,top: 10,right: 0,bottom: 0),
                        child:Center(child:Row(children: [
                          new Text("Don’t have an account ? "),
                          new Text("Sign up",  textAlign: TextAlign.center,style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue)),
                        ],),),
                      ),
                    ),
                    ),
                  ),
                ),),

            ],
          ),
        ),
    );
  }
}