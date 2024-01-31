
import 'package:flutter/material.dart';


class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(

      body:


        Container(
        width: screen_size_width,
        height: screen_size_height,
        padding: EdgeInsets.only(top:16, left:16, right: 16),

    child: SingleChildScrollView(

       child: Column(
         children: [

           Column(
             children: [
               ListTile(
                 title:  Text('Shermi'),
                 subtitle:
                 Column( children: [

                   Row( children: [
                     InkWell(
                       child:  Text(
                         'Keira throughway 5.0 Kms',
                         style: TextStyle(color: Colors.black.withOpacity(0.6)),
                       ),
                     ),
                   ],),




                   Row( children: [
                     InkWell(
                       child:  Text(
                         'Haircut x 1 + Shave x 1',
                         style: TextStyle(color: Colors.black.withOpacity(0.6)),
                       ),
                     ),
                   ],),

                   Row( children: [
                     InkWell(
                       child:  Text(
                         '12 Mar 2021 102',
                         style: TextStyle(color: Colors.black.withOpacity(0.6)),
                       ),
                     ),
                   ],),

                   Row( children: [
                     InkWell(
                       child:  Text(
                         'Cancel Booking',
                         style: TextStyle(color: Colors.red.withOpacity(1)),
                       ),
                     ),
                   ],),
                 ],
                 ),

                 trailing:
                 Column(
                   children: <Widget>[
                     Container(
                       width: 40,
                       height: 40,
                       padding: EdgeInsets.all(10),
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.transparent,
                       ),
                       child: Image(image: AssetImage('asserts/images/heart.png'), fit: BoxFit.contain),
                     ),

                     Text('Reschedule Booking',  style: TextStyle(color: Colors.deepPurpleAccent),),
                   ],),
               ),
             ],),


           SizedBox(height: 6),
           SizedBox(height: 6),


           Column(
             children: [
               ListTile(
                 title:  Text('Indumala'),
                 subtitle:
                 Column( children: [

                   Row( children: [
                     InkWell(
                       child:  Text(
                         'Keira throughway 5.0 Kms',
                         style: TextStyle(color: Colors.black.withOpacity(0.6)),
                       ),
                     ),
                   ],),




                   Row( children: [
                     InkWell(
                       child:  Text(
                         'Haircut x 1 + Shave x 1',
                         style: TextStyle(color: Colors.black.withOpacity(0.6)),
                       ),
                     ),
                   ],),

                   Row( children: [
                     InkWell(
                       child:  Text(
                         '12 Mar 2021 102',
                         style: TextStyle(color: Colors.black.withOpacity(0.6)),
                       ),
                     ),
                   ],),

                   Row( children: [
                     InkWell(
                       child:  Text(
                         'Cancel Booking',
                         style: TextStyle(color: Colors.red.withOpacity(1)),
                       ),
                     ),
                   ],),
                 ],
                 ),

                 trailing:
                 Column(
                   children: <Widget>[
                     Container(
                       width: 40,
                       height: 40,
                       padding: EdgeInsets.all(10),
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.transparent,
                       ),
                       child: Image(image: AssetImage('asserts/images/heart.png'), fit: BoxFit.contain),
                     ),

                     Text('Reschedule Booking',  style: TextStyle(color: Colors.deepPurpleAccent),),
                   ],),
               ),
             ],),



         ],
       ),



    ),
        ),
     );

  }
}
