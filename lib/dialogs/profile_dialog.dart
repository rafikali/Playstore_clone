import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/pages/profile.dart';

import '../contents.dart';
class ProfileAlert {
  final List<Contents>? data;
  BuildContext context;

  ProfileAlert({required this.context, this.data});

  getAlertDialogBox() {
    showDialog(context: context,
        barrierDismissible: false,
        builder: (context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: Container(
          height: 20,
            width: 800,
          child: Row(
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(CupertinoIcons.clear, ),
              iconSize: 20,
              ),
              const SizedBox(
                width: 80,
              ),
              Image.network(ImageConstant.googleImage,
              width: 70,
                  height: 50,)
            ],
          ),
        ),
        content: Container(
              width: 900,
              height: 600,
              child: Padding(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                     const ListTile(
                       leading: CircleAvatar(
                         backgroundImage: AssetImage(ImageConstant.profileImage),
                       ),
                       title: Text('rafikali'),
                       subtitle: Text('ra321030@gmail.com'),
                       trailing: Icon(CupertinoIcons.chevron_down_circle),


                     ),

                   ElevatedButton(

                     clipBehavior: Clip.none,

                       onPressed: () {},
                       child: const Text('Manage your Google Account',
                         style: TextStyle(
                           color: Colors.black87,
                           fontWeight: FontWeight.w400,
                           fontSize: 16,

                         ),
                       ),
                     style: ButtonStyle(
                       backgroundColor: MaterialStateProperty.all<Color>(
                         Colors.white,
                     ),
                       elevation: MaterialStateProperty.all<double>(0),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20),),
                     ),
                       side: MaterialStateProperty.all<BorderSide>(
                         const BorderSide(width: 1,
                         color: Colors.grey),),

                   ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   const Divider(
                     thickness: 1,
                   ),

                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: ListView.builder(
                         shrinkWrap: true,
                        itemCount: data!.length,
                          itemBuilder: (context, index) {
                          return ListTile(
                            leading: data![index].iconname,
                            iconColor: Colors.black54,
                            title: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(data![index].title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black87
                              ),),

                            ),

                          );
    }


                ),
                     ),
                   ),
                    const Divider(),
                        SizedBox(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Privacy Policy',
                            style: TextStyle(
                              fontSize: 15
                            ),),
                            const SizedBox(width: 5,),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            ),
                            SizedBox(width: 5,),


                            const Text('Terms of service',
                              style: TextStyle(
                                  fontSize: 15,
                              ),),

                          ],

                    ),
                        )

]
          ),
              ),

      ),
      );
        });
  }
  }

