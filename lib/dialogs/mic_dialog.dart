
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mic {
   BuildContext context;
   Mic({required this.context});

  getAlertDialogBox() {
    showDialog(context: context,
        barrierDismissible: true,
        builder: (context) {
     bool isIconChanged = false;
      return StatefulBuilder(builder: (context, setState){
      return  AlertDialog(
          title: Container(
            height: 200,
            child: Column(
              children: [const Text('Google',
                style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500,

                ),),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState((){
                      isIconChanged = !isIconChanged;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    child: Icon(CupertinoIcons.mic_circle_fill,
                      size:isIconChanged? 80:40,),

                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text('Tap Here To Search'),
              ],

            ),
          ),

        );
      });



    });
  }
}