import 'package:flutter/material.dart';




class blank extends StatelessWidget {
  static const String routeName = '/blank';
  const blank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
