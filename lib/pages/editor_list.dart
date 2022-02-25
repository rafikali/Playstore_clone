import 'package:flutter/material.dart';
import '../constants/image.dart';


class EditorList extends StatelessWidget {
  const EditorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(

      padding: EdgeInsets.all(5),
        height: 165,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
            return Container(

              padding: EdgeInsets.all(5),
              width: 159,
              child: Column(
                children: [
                  Image.network(ImageConstant.freefire,
                  ),
                  ListTile(
                    leading: Image.network(ImageConstant.garena,
                    height: 50,
                    width: 50,),),

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
