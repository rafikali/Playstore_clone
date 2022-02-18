import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/widget/Appbar.dart';
import 'package:playstore_clone/widget/SliverAppBar.dart';




class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body:  SafeArea(
       child: CustomScrollView(
         slivers:[
           SliverBar(
           floating: true,
           pinned: true,
           snap: true,

           title: 'Search for apps & games',
           flexibleSpace: FlexibleSpaceBar(
             // title: Text('rafik'),
             background: FlutterLogo(),



           ),
           type: 'normal',
           // slivers: <Widget>[
           //   Text('rafik ali'),
           //   Image.network(ImageConstant.imageUrl)
           // ]
         ),
           const SliverToBoxAdapter(
             child: SizedBox(
               height: 50,
               child: Center(
                 child: Text('Scroll to see the SliverAppBar in effect.'),
               ),
             ),
           ),

           SliverList(
               delegate: SliverChildBuilderDelegate (
                   (BuildContext context, int index ){
             return ListTile(
               title: Text('Hello world'),
               leading: CircleAvatar(backgroundImage: NetworkImage(ImageConstant.imageUrl),),
             );
           },
             childCount: 100,
           )),
        ]

       ),

     ),

    );

  }
}
