
import 'package:flutter/material.dart';
import 'package:glamourDigit/uidata.dart';




class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
         children: [
           ListTile(
             leading: CircleAvatar(
               radius: 32,
               backgroundImage: AssetImage(
                 "asserts/images/profile.jpg",
               ),
             ),
             title: Text('John Doe',
            style: TextStyle(color: Colors.black,fontSize: 30),) ,
             trailing:Text(
                 'Edit',
                 style: TextStyle(color: Colors.purple.withOpacity(0.6),decoration: TextDecoration.underline,fontSize: 20),)
             ,
             onTap: (){
               //action code when clicked
               print("The icon is clicked");
             },
           ),


           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[

               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Text(
                   '+1 - 4842989351 johndoe@gmail.com',
                   style: TextStyle(color: Colors.black.withOpacity(0.6),fontSize: 20),
                 ),
               ),

             ], ),

           Divider(
               color: Colors.grey
           ),



           Column(
             children: [
               ListTile(
                 leading: CircleAvatar(
                   radius: 22,
                   backgroundImage: AssetImage(
                     "asserts/images/profile.jpg",
                   ),
                 ),
                 title: const Text('Your Bookings'),
                 subtitle: Text(
                   'Reorder your favorite service in a click',
                   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                 ),

                 trailing: InkWell(
                   child: Icon(Icons.arrow_forward_ios),
                   onTap: (){
                     //action code when clicked
                     print("The icon is clicked");
                   },
                 ),
               ),
             ],
           ),




           SizedBox(height: 6),
           SizedBox(height: 6),


           Column(
             children: [
               ListTile(
                 leading: CircleAvatar(
                   radius: 22,
                   backgroundImage: AssetImage(
                     "asserts/images/profile.jpg",
                   ),
                 ),
                 title: const Text('Payments'),
                 subtitle: Text(
                   'Payment methods, Transaction history',
                   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                 ),

                 trailing: InkWell(
                   child: Icon(Icons.arrow_forward_ios),
                   onTap: (){
                     //action code when clicked
                     print("The icon is clicked");
                   },
                 ),
               ),
             ],
           ),



           SizedBox(height: 6),
           SizedBox(height: 6),


           Column(
             children: [
               ListTile(
                 leading: CircleAvatar(
                   radius: 22,
                   backgroundImage: AssetImage(
                     "asserts/images/profile.jpg",
                   ),
                 ),
                 title: const Text('Manage Address'),

                 trailing: InkWell(
                   child: Icon(Icons.arrow_forward_ios),
                   onTap: (){
                     //action code when clicked
                     print("The icon is clicked");
                   },
                 ),
               ),
             ],
           ),




           SizedBox(height: 6),
           SizedBox(height: 6),


           Column(
             children: [
               ListTile(
                 leading: CircleAvatar(
                   radius: 22,
                   backgroundImage: AssetImage(
                     "asserts/images/profile.jpg",
                   ),
                 ),
                 title: const Text('Notifications'),
                 subtitle: Text(
                   'View your past notifications',
                   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                 ),

                 trailing: InkWell(
                   child: Icon(Icons.arrow_forward_ios),
                   onTap: (){
                     //action code when clicked
                     print("The icon is clicked");
                   },
                 ),
               ),
             ],
           ),




           SizedBox(height: 6),
           SizedBox(height: 6),


           Column(
             children: [
               ListTile(
                 leading: CircleAvatar(
                   radius: 22,
                   backgroundImage: AssetImage(
                     "asserts/images/profile.jpg",
                   ),
                 ),
                 title: const Text('Register as owner'),
                 subtitle: Text(
                   'Want to list your service? Register with us',
                   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                 ),

                 trailing: InkWell(
                   child: Icon(Icons.arrow_forward_ios),
                   onTap: (){
                     //action code when clicked
                     print("The icon is clicked");
                   },
                 ),
               ),
             ],
           ),




           SizedBox(height: 6),
           SizedBox(height: 6),


           Column(
             children: [
               ListTile(
                 leading: CircleAvatar(
                   radius: 22,
                   backgroundImage: AssetImage(
                     "asserts/images/profile.jpg",
                   ),
                 ),
                 title: const Text('About'),
                 subtitle: Text(
                   'Want to list your service? Register with us',
                   style: TextStyle(color: Colors.black.withOpacity(0.6)),
                 ),

                 trailing: InkWell(
                   child: Icon(Icons.arrow_forward_ios),
                   onTap: (){
                     //action code when clicked
                     print("The icon is clicked");
                   },
                 ),
               ),
             ],
           ),



           Column(
             children: [
               ListTile(
                 leading: Icon(Icons.logout,color: Colors.red,size: 42,),onTap: () {
          Navigator.pushNamed(context, UIData.loginPageRoute);
        },
                 title:
                 InkWell(
                   onTap: () {
                     Navigator.pushNamed(context, UIData.loginPageRoute);
                   },
                   child: new Text("Logout",style: TextStyle(color: Colors.red.withOpacity(0.6)),),
                 ),

                 trailing: InkWell(
                   child: Icon(Icons.arrow_forward_ios,color: Colors.red,),

                   onTap: (){
                     //action code when clicked
                     Navigator.pushNamed(context, UIData.loginPageRoute);
                   },
                 ),
               ),
             ],
           ),



         ],
       ),



    ),
        ),
     );

  }
}
