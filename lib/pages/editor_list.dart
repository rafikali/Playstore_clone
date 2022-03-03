import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_clone/main.dart';
import 'package:playstore_clone/widget/blank_page.dart';
import 'package:transparent_image/transparent_image.dart';
import '../constants/image.dart';

class Editorlistdynamic extends StatefulWidget {
  final String mainImage;
  final String logoImage;
  final String title;
  final String category1;
  final String category2;
  final String rating;
  final String size;
  final dynamic height;
  final dynamic width;

  const Editorlistdynamic({
    this.height,
    this.width,
    required this.mainImage,
    required this.logoImage,
    required this.title,
    required this.category1,
    required this.category2,
    required this.size,
    required this.rating});
  @override
  _EditorlistdynamicState createState() => _EditorlistdynamicState();
}

class _EditorlistdynamicState extends State<Editorlistdynamic> {
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
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, blank.routeName);
                  },
                  child: Column(
                    children: [
                      Flexible(
                        child: ClipRRect(
                          child: FadeInImage.memoryNetwork(
                            image: widget.mainImage,
                            height: widget.height,
                            width: widget.width,
                            placeholder: kTransparentImage,
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 15),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: FadeInImage.memoryNetwork(
                              image: widget.logoImage,
                              placeholder: kTransparentImage,
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
                              Text(widget.title, style: TextStyle(fontSize: 18, letterSpacing: 0.2),),
                              SizedBox(height: 2,),
                              Row(children: [Text(widget.category1, style: TextStyle(fontSize: 14),),SizedBox(width: 6,), ClipRRect(borderRadius: BorderRadius.circular(10),child: Container(height: 4,width: 4, color: Colors.black,)),SizedBox(width: 6,), Text(widget.category2,style: TextStyle(fontSize: 14),)],),
                              SizedBox(height: 2,),
                              Row(children: [Text(widget.rating,style: TextStyle(fontSize: 15),), Icon(CupertinoIcons.star_fill, size: 10,), SizedBox(width: 10,),Text(widget.size)],),

                            ],
                          ),
                        ),

                      ),

                    ],
                  ),
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
