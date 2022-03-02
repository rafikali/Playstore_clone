import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomTabbar extends StatelessWidget with PreferredSizeWidget {
  const CustomTabbar({Key? key}) : super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        children: [
          TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            labelStyle: const TextStyle(
              fontSize: 16,
            ),

            labelColor: HexColor("#006400",
            ),

            indicatorColor: HexColor("#006400",),


            isScrollable: true,
            unselectedLabelColor: Colors.black87,
            indicatorWeight: 4,
            indicatorSize: TabBarIndicatorSize.label,
            tabs:  const [
              Tab(
                text: 'For you',
              ),


              Tab(
                text: 'Top charts',
              ),

            ],
          ),

        ],
      ),







    );



  }
}

