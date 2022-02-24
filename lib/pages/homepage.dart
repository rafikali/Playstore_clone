import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/pages/editor_choice.dart';
import 'package:playstore_clone/pages/profile.dart';
import 'package:playstore_clone/widget/Appbar.dart';
import 'package:playstore_clone/widget/SliverAppBar.dart';

class Homepage extends StatefulWidget {
  static const String routeName = "/home_page";
  final bool? changeButton;

  const Homepage({this.changeButton,}) : super();


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
     bool changeButton = true;
   moveToHome(BuildContext context) {
     setState(() {
       changeButton = !changeButton;
     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          SliverBar(
            floating: true,
            pinned: true,
            snap: false,

            title: 'Search for apps & games',
            flexibleSpace: const FlexibleSpaceBar(
              title: Text("rafik"),
              //
            ),
            type: 'normal',
            // slivers: <Widget>[
            //   Text('rafik ali'),
            //   Image.network(ImageConstant.imageUrl)
            // ]
          ),
          // SizedBox(
          //   height: 2,
          // ),
          SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Editorchoice.routeName);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Expanded(child: Icon(CupertinoIcons.text_badge_checkmark), flex: 1,),
                        SizedBox(width: 10,),
                        Expanded(child: Text('Editors Choice games',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87
                        ),),
                          flex: 4,),
                        Expanded(child: Icon(CupertinoIcons.arrow_right),),
                      ],
                    ),
                  ),
                ],
              ),

          ),
          //  SizedBox(
          //   height: 2,
          // ),


          SliverList(
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index)
                {
              return ListTile(
                title: const Text('Hello world'),

              );
            },
            childCount: 100,
          )),
        ]),

    );
  }
}
