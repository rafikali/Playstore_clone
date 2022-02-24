import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        title: Container(
          height: 20,
            width: 300,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(CupertinoIcons.clear),
              iconSize: 20,
              ),
              const SizedBox(
                width: 50,
              ),
              Image.network(ImageConstant.googleImage,
              width: 70,
                  height: 50,)
            ],
          ),
        ),
        content: Container(
          height: 1500,
              width: 600,
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


                       onPressed: () {},
                       child: Text('Manage your accounts',
                         style: const TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.w400,
                           fontSize: 16,

                         ),
                       ),
                     style: ButtonStyle(

                       backgroundColor: MaterialStateProperty.all<Color>(
                         Colors.lightBlue
                     ),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>( RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),),
                     ),

                   ),
                   ),

                   ListView.builder(
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

]
          ),
              ),

      ),
      );
        });
  }
  }

