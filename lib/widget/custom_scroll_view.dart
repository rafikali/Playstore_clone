import 'package:flutter/material.dart';
import 'package:playstore_clone/pages/editor_choice.dart';
import 'package:playstore_clone/pages/editor_list.dart';




class Customscroll extends StatefulWidget {
  final editorchoice;
  final editorlistdynamic;
  const Customscroll({required this.editorchoice, required this.editorlistdynamic}) : super();

  @override
  _CustomscrollState createState() => _CustomscrollState();
}

class _CustomscrollState extends State<Customscroll> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(

                  (BuildContext context, int index) {

                return Container(
                  height: 270,
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      children:  [
                        const SizedBox(
                          height: 10,
                        ),
                        widget.editorchoice,
                        widget.editorlistdynamic,
                      ],
                    ),
                  ),
                );
              },
              childCount: 10,
            ),
          ),



        ]
    );
  }
}
