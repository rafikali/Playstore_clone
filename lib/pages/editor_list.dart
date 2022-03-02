import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import '../constants/image.dart';


class EditorList extends StatelessWidget {
  const EditorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
      padding: EdgeInsets.all(5),
        height: 260,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(12),
              width: 250,
              child: Column(
                children: [
                  ClipRRect(
                    child: FadeInImage.memoryNetwork(image: ImageConstant.freefire,
                      placeholder: kTransparentImage,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 15),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                          image: ImageConstant.garena  ,
                      fit: BoxFit.cover,
                      width: 60,
                      height: 80),
                    ),

                    title: Container(
                      height: 60,
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        children: [
                          Text('Garena FreeFire', style: TextStyle(fontSize: 18, letterSpacing: 0.2),),
                          SizedBox(height: 2,),
                          Row(children: [Text('Action', style: TextStyle(fontSize: 14),),SizedBox(width: 6,), ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(height: 4,width: 4, color: Colors.black,)),SizedBox(width: 6,), Text('Battleground',style: TextStyle(fontSize: 14),)],),
                          SizedBox(height: 2,),
                          Row(children: [Text('4.3',style: TextStyle(fontSize: 15),), Icon(CupertinoIcons.star_fill, size: 10,), SizedBox(width: 10,),Text('83MB')],),

                        ],
                      ),
                    ),

                  ),

                ],
              )
            );

            }),


    );
}
}
class EditorListtop extends StatelessWidget {
  const EditorListtop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
      padding: EdgeInsets.all(5),
        height: 260,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(12),
              width: 250,
              child: Column(
                children: [
                  ClipRRect(
                    child: FadeInImage.memoryNetwork(image: ImageConstant.pubg,
                      placeholder: kTransparentImage,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 15),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                          image: ImageConstant.pubg_logo,
                      fit: BoxFit.cover,
                      width: 60,
                      height: 80),
                    ),

                    title: Container(
                      height: 60,
                      child: ListView(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        children: [
                          Text('Garena FreeFire', style: TextStyle(fontSize: 18, letterSpacing: 0.2),),
                          SizedBox(height: 2,),
                          Row(children: [Text('Action', style: TextStyle(fontSize: 14),),SizedBox(width: 6,), ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(height: 4,width: 4, color: Colors.black,)),SizedBox(width: 6,), Text('Battleground',style: TextStyle(fontSize: 14),)],),
                          SizedBox(height: 2,),
                          Row(children: [Text('4.3',style: TextStyle(fontSize: 15),), Icon(CupertinoIcons.star_fill, size: 10,), SizedBox(width: 10,),Text('83MB')],),

                        ],
                      ),
                    ),

                  ),

                ],
              )
            );

            }),


    );
}
}
//             Container(
//               width: 159,
//               child: Column(
//                 children: [
//                   Image.asset(ImageConstant.profileImage),
//                   ListTile(
//                     leading: Image.asset(ImageConstant.profileImage,
//                       height: 50,
//                       width: 50,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               width: 159,
//               child: Column(
//                 children: [
//                   Image.asset(ImageConstant.profileImage),
//                   ListTile(
//                     leading: Image.asset(ImageConstant.profileImage,
//                       height: 50,
//                       width: 50,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               width: 159,
//               child: Column(
//                 children: [
//                   Image.asset(ImageConstant.profileImage),
//                   ListTile(
//                     leading: Image.asset(ImageConstant.profileImage,
//                       height: 50,
//                       width: 50,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               width: 159,
//               child: Column(
//                 children: [
//                   Image.asset(ImageConstant.profileImage),
//                   ListTile(
//                     leading: Image.asset(ImageConstant.profileImage,
//                       height: 50,
//                       width: 50,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               width: 159,
//               child: Column(
//                 children: [
//                   Image.asset(ImageConstant.profileImage),
//                   ListTile(
//                     leading: Image.asset(ImageConstant.profileImage,
//                       height: 50,
//                       width: 50,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               width: 159,
//               child: Column(
//                 children: [
//                   Image.asset(ImageConstant.profileImage),
//                   ListTile(
//                     leading: Image.asset(ImageConstant.profileImage,
//                       height: 50,
//                       width: 50,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               width: 159,
//               color: Colors.pink,
//             ),
//           ],
//
//
//         )
//     );
//   }
// }
