import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final VoidCallback oppressed;

  const MyButton( this.btnText, Key? key,  this.oppressed) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .5,
      height: 40,
      child: TextButton(
       
        onPressed: oppressed,
        child: Text(btnText, style: TextStyle(color: Colors.white, 
        fontSize: 15.5,
        fontWeight: FontWeight.w400)),
      ),
    );
  }

}