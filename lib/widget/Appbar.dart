import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayAppbar extends StatefulWidget with PreferredSizeWidget {
  String title;
  String type;

  PlayAppbar({required this.title, required this.type});

  @override
  State<PlayAppbar> createState() => _PlayAppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight);

}

class _PlayAppbarState extends State<PlayAppbar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


     body: widget.type == "normal"?  AppBar()
         : SafeArea(

               child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: 200,
                        pinned: true,
                        snap: false,
                        floating: false,



                        flexibleSpace: const FlexibleSpaceBar(

                          background: FlutterLogo(),
                          title: Text('hello',
                              style: TextStyle(
                                  color: Colors.black,
                              ),
                          ),
                        ),


                        backgroundColor: Colors.white,



                      ),

                    SliverGrid(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200.0,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 4.0,
                      ),

                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.teal[100 * (index % 9)],
                            child: Text('Grid Item $index'),
                          );
                        },
                        childCount: 20,
                      ),
                    ),
                    SliverFixedExtentList(
                      itemExtent: 50.0,
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.center,
                            color: Colors.lightBlue[100 * (index % 9)],
                            child: Text('List Item $index'),
                          );
                        },
                      ),
                    ),
                  ],
               )



        ),


    );





  }
}
