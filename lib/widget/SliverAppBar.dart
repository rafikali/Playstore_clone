import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/utils/routes.dart';

class SliverBar extends StatelessWidget {
  final String title;
  final Widget flexibleSpace;
  final bool? floating;
  final bool? pinned;
  final bool? snap;
  final String type;

   SliverBar({required this.title, required this.flexibleSpace,  this.floating,  this.pinned, this.snap, required this.type}) : super();

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 6,

      child: SliverAppBar(
          expandedHeight: 120.0,
          flexibleSpace:  flexibleSpace,



          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 1),
            child: Card(
              elevation: 4,
              shadowColor: Colors.white60,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: BorderSide(
                    color: Colors.black12,
                  )
                ),


                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    children: [
                      IconButton(icon: const Icon(CupertinoIcons.search,
                      color: Colors.black),
                      onPressed: () {

                      }),

                      Flexible(
                        child: TextFormField(

                          decoration: const InputDecoration(
                            hintText: "Search for apps & games",
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            )

                          ),
                        ),
                      ),

                      IconButton(
                          icon: const Icon(CupertinoIcons.mic,
                           color: Colors.black,),
                          onPressed: () {
                            Navigator.pushNamed(context, MyRoutes.searchRoute);

                          }),
                      const SizedBox(
                        width: 10,
                      ),


                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile.jpg'),

                      ),

                    ],
                  ),
                ),
              ),

          ),
        // actions: <Widget>[
        //
        //
        //
        // ],


          floating: floating!,
          pinned: pinned!,
          snap: snap!,
          backgroundColor: Colors.white,

        bottom: const TabBar(
          labelColor: Colors.black38,
          indicatorColor: Colors.amberAccent,
          isScrollable: true,
          tabs:  [
            Tab(text: 'For you',),
            Tab(text: 'Top charts',),
            Tab(text: 'Children',),
            Tab(text: 'Premium',),
            Tab(text: 'Categories',),
            Tab(text: 'Editors choice',),

          ],


       ),




      ),


    );
  }
}
