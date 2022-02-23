import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_clone/constants/image.dart';

getAlertDialogBox(BuildContext context) {
  showDialog(context: context,
      builder: (context) {
    return AlertDialog(
      title:  Container(
          child: Row(
            children: [
              IconButton( icon: Icon(CupertinoIcons.clear),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              // SizedBox(
              //   width: 20,
              // ),



              Image.network(ImageConstant.googleImage,
                width: 100,
                height: 50,
              ),

            ],
          ),
        ),


      content: Container(
        height: 500,
        width: 500,
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context, index)
            {
              return ListTile(
                title: CircleAvatar(
                  backgroundImage: AssetImage(ImageConstant.profileImage),
                ),
              );

            }
        ),),
      );








      });
}