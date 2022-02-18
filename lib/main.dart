import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playstore_clone/utils/routes.dart';
import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

   initialRoute: MyRoutes.homeRoute,
      routes: {
     MyRoutes.homeRoute: (context) => Homepage(),
      },
    );

  }
}