import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_clone/dialogs/mic_dialog.dart';
import '';

class Search {
  final String? keysearch;
  final Icon? mic;
  BuildContext context;
  dynamic controller = Colors.blue;

  Search({required this.context, this.keysearch, this.mic, this.controller});
  getAlertDialogBox() {
    showDialog(
        context: context,
        builder: (context) {

          return StatefulBuilder( builder: (context, setState) {
            return AlertDialog(

                contentPadding: EdgeInsets.zero,
                insetPadding: EdgeInsets.zero,
                content: Padding(

                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    margin: EdgeInsets.zero,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(child: Icon(CupertinoIcons.arrow_left),onTap: () {
                              Navigator.pop(context);
                            },),
                            SizedBox(
                              width: 26,
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 32,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    constraints: BoxConstraints(),
                                    hintText: 'Search the apps & games',
                                    hintStyle: TextStyle(fontSize: 18)

                                  ),
                                ),
                              ),
                            ),
                            InkWell(child: Icon(CupertinoIcons.mic,), onTap: () {
                              Mic(context: context).getAlertDialogBox();
                            },),


                          ],
                        ),
                        Divider(thickness: 1,),
                      Container(
                        height: 100,
                        child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return const ListTile(
                            leading: Icon(CupertinoIcons.clock),
                            title:  Text('opera'),
                            trailing: Icon(CupertinoIcons.arrow_up_left),
                          );
                        }),
                      )
                      ],
                    ),

                  ),
                ),
              );

          });
          });
        }

  }




class Searchednames {
   List<String> controller = [
   ];




}