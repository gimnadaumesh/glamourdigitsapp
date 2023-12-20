import 'package:glamourDigit/pages/MyAppointments.dart';
import 'package:glamourDigit/pages/Ownerregister.dart';
import 'package:glamourDigit/pages/ProductUpload.dart';
import 'package:glamourDigit/pages/appointments.dart';
import 'package:glamourDigit/pages/booking.dart';
import 'package:glamourDigit/pages/scanner.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:glamourDigit/pages/book.dart';
import 'package:glamourDigit/pages/home.dart';

import 'package:glamourDigit/pages/intro.dart';
import 'package:glamourDigit/pages/login.dart';
import 'package:glamourDigit/pages/register.dart';

import 'uidata.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GlamourDigit',
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: IntroPage(),
      routes: <String, WidgetBuilder>{
        UIData.loginPageRoute: (BuildContext context) => LoginPage(),
        UIData.homePageRoute: (BuildContext context) => HomePage(),
        UIData.introPageRoute: (BuildContext context) => IntroPage(),
        UIData.registerPageRoute: (BuildContext context) => RegisterPage(),
        UIData.bookPageRoute: (BuildContext context) => BookPage(),
        UIData.MybookPageRoute: (BuildContext context) => MyBookingPage(),
        UIData.appointmentPageRoute: (BuildContext context) => AppointmentPage(),
        UIData.myappointmentPageRoute: (BuildContext context) => MyAppointmentPage(),
        UIData.scannerPageRoute: (BuildContext context) => ScannerPage(),
        UIData.OwnerRegisterPageRouter: (BuildContext context) => OwnerRegisterPage(),
        UIData.ProductUpload: (BuildContext context) => ProductUpload(),
      }
    );
  }
}

