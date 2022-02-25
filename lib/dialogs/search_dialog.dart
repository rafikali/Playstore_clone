import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search {
  final String? keysearch;
  final Icon? mic;
  BuildContext context;

  Search({required this.context, this.keysearch,  this.mic});
  getAlertDialogBox() {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        title: Container(
          height: 1000,
            width: MediaQuery.of(context).size.width,
          child: ListTile(
            title: Row(
              children: [
                Icon(CupertinoIcons.arrow_right),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search the apps & games",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Icon(CupertinoIcons.mic),
              ],
            ),
          )
        ),
      );
    });
  }
}

