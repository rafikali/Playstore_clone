import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/pages/profile.dart';
import 'package:playstore_clone/widget/Appbar.dart';
import 'package:playstore_clone/widget/SliverAppBar.dart';

class Homepage extends StatelessWidget {
  static const String routeName = "/home_page";

  const Homepage({Key? key}) : super(key: key);

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
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                title: const Text('Hello world'),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(ImageConstant.imageUrl),
                ),
              );
            },
            childCount: 100,
          )),
        ]),

    );
  }
}
