import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/contents.dart';

getAlertDialogBox(BuildContext context,List<Contents> data) {
  showDialog(context: context,
      barrierDismissible: false,
      builder: (context) {
    return AlertDialog(
      title:  Container(
        height: 30,
        width: 300,
        child: Row(
          children: [
            IconButton( icon: Icon(CupertinoIcons.clear),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            const SizedBox(
              width: 50,
            ),



            Image.network(ImageConstant.googleImage,
              width: 70,
              height: 50,
            ),

          ],
        ),





      ),



      content: Container(
        height: 500,
        width: 500,
        child: ListView.builder(
          itemCount: data.length,
            itemBuilder: (context, index)
            {
              return ListTile(
                leading: data[index].iconname,
                iconColor: Colors.black54,
                title: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(data[index].title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black87
                  ),),
                ),
              );


            }
        ),),
      );








      });
}