import 'package:flutter/material.dart';

import '../uidata.dart';

class MyButton2 extends StatelessWidget {
  final String btnText;
  final VoidCallback oppressed;

  const MyButton2({Key? key, required this.btnText, required this.oppressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      child: TextButton(
      
        onPressed: oppressed,
        child: Text(btnText, style: TextStyle(color: Colors.white, 
        fontWeight: FontWeight.w400)),
      ),
    );
  }

}