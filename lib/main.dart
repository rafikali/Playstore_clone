import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playstore_clone/pages/profile.dart';
import 'package:playstore_clone/pages/search.dart';
import 'package:playstore_clone/utils/routes.dart';
import 'pages/homepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,


  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
   initialRoute: MyRoutes.homeRoute,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(

        )
        ),


      routes: {
     MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.searchRoute: (context) => SearchBar(),
        MyRoutes.profileRoute: (context) => Profile(),

      },
    );

  }
}