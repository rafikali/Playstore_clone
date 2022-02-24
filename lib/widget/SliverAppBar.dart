import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/contents.dart';
import 'package:playstore_clone/pages/profile.dart';

class SliverBar extends StatefulWidget {
  final String title;
  final Widget flexibleSpace;
  final bool? floating;
  final bool? pinned;
  final bool? snap;
  final String type;

  SliverBar(
      {required this.title,
      required this.flexibleSpace,
      this.floating,
      this.pinned,
      this.snap,
      required this.type}
      )
      : super();

  @override
  State<SliverBar> createState() => _SliverBarState();
}

class _SliverBarState extends State<SliverBar> {

  @override
  Widget build(BuildContext context) {
   

    return DefaultTabController(
      length: 6,
      child: SliverAppBar(

        leadingWidth: 0,
        expandedHeight: 120.0,
        flexibleSpace: widget.flexibleSpace,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            elevation: 4,
            shadowColor: Colors.white60,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(
                  color: Colors.black12,
                )),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      icon: const Icon(CupertinoIcons.search,
                          color: Colors.black),
                      onPressed: () {}),
                  Flexible(
                    child: TextFormField(
                      showCursor: true,
                      decoration: const InputDecoration(
                          hintText: "Search for apps & games",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          )),
                    ),
                  ),

                  IconButton(
                      icon: const Icon(
                        CupertinoIcons.mic,
                        color: Colors.black,
                      ),
                      onPressed: () {
                       Alert(context: context, param: Container(
                         height: 200,
                         child: Column(
                           children:  [
                             Text('Google',
                             style: TextStyle(
                               fontWeight: FontWeight.w500,
                               fontSize: 30,
                               letterSpacing: 2,
                             ),),
                             SizedBox(height: 20,),
                             InkWell(
                               onTap: () => {},
                                 child: AnimatedContainer(
                                   duration: Duration(seconds: 1),
                                   child: Icon(CupertinoIcons.add,
                                    size:  80,
                                   )
                                 )),

                             SizedBox(height: 40),
                             Text('Tap Here To Search'),

                           ],
                         ),
                       ), barrierDismmissible: true).getAlertDialogBox( );
                      }),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      List<Contents> data = const [
                        Contents(title: 'Manage apps and device', iconname: Icon(CupertinoIcons.book)),
                        Contents(title: 'Offers and notifications', iconname: Icon(CupertinoIcons.bell)),
                        Contents(title: 'Payments and subscriptions', iconname: Icon(CupertinoIcons.creditcard)),
                        Contents(title: 'Play Protect', iconname: Icon(CupertinoIcons.play)),
                        Contents(title: 'library', iconname: Icon(CupertinoIcons.folder)),
                        Contents(title: 'Play Protect', iconname: Icon(CupertinoIcons.play)),
                        Contents(title: 'Settings', iconname: Icon(CupertinoIcons.settings)),
                        Contents(title: 'Help & feedback', iconname: Icon(CupertinoIcons.question_circle)),

                      ];
                      Alert(context: context, data: data, barrierDismmissible: false
                          ,

                      ).getAlertDialogBox(

                      );
                      // getAlertDialogBox(context, data);


                    },
                    child: const CircleAvatar(
                      maxRadius: 15,
                      minRadius: 15,
                      backgroundImage: AssetImage(ImageConstant.profileImage),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // actions: <Widget>[
        //
        //
        //
        // ],

        floating: widget.floating!,
        pinned: widget.pinned!,
        snap: widget.snap!,
        backgroundColor: Colors.white,

        bottom:  TabBar(


          padding: const EdgeInsets.symmetric(horizontal: 26),
          labelStyle: const TextStyle(
            fontSize: 16,
          ),

          labelColor: HexColor("#006400"),
          indicatorColor: HexColor("#006400"),
          isScrollable: true,
          unselectedLabelColor: Colors.black87,
          indicatorWeight: 4,
          indicatorSize: TabBarIndicatorSize.label,

          // indicator: UnderlineTabIndicator(
          //   borderSide: BorderSide(width: 5),
          //   insets: EdgeInsets.symmetric(horizontal: 10)
          // ),
          tabs: const [
            Tab(
              text: 'For you',
            ),
            Tab(
              text: 'Top charts',
            ),
            Tab(
              text: 'Children',
            ),
            Tab(
              text: 'Premium',
            ),
            Tab(
              text: 'Categories',
            ),
            Tab(
              text: 'Editors choice',
            ),
          ],
        ),
        shape: UnderlineInputBorder(
          borderSide: BorderSide(color: HexColor("#D3D3D3"),
          style: BorderStyle.solid
          )
        ),

      ),

    );
  }
}
