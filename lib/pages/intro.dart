import 'package:flutter/material.dart';

import '../uidata.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "asserts/images/main.png",
                      ),
                      fit: BoxFit.contain)),
              height: MediaQuery.of(context).size.height * .45,
            ),
            Text("Find your unique \nnail style",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    height: 1.5,
                    fontSize: 22,
                    letterSpacing: 1.3)),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(height: 1.8, letterSpacing: 1.3),
            ),

            ListTile(
              title: Row(
                children: <Widget>[
                  Expanded(
              child: Container(
                  width: MediaQuery.of(context).size.width * .5,
                  height: 40,
                      child: ElevatedButton(onPressed: () {Navigator.pushNamed(context, UIData.loginPageRoute);},
                        child: const Text("Sign In"),
                      )

                  ),
                  ),

                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width * .5,
                        height: 40,
                        child:ElevatedButton(
                          onPressed: () {Navigator.pushNamed(context, UIData.loginPageRoute);},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, // Background color
                          ),
                          child: const Text(
                            'Get started!',
                            style: TextStyle(color: Colors.black),

                          ),
                        )

                    ),
                  ),




                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
