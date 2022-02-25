import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/contents.dart';
import 'package:playstore_clone/dialogs/mic_dialog.dart';
import 'package:playstore_clone/dialogs/search_dialog.dart';
import 'package:playstore_clone/pages/profile.dart';
import 'package:playstore_clone/dialogs/profile_dialog.dart';

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
  Color searchColor = Color(0xFF000000);
  TextEditingController _controller = TextEditingController();

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
                      icon: Icon(CupertinoIcons.search,
                          color: searchColor),
                      onPressed: () {}),
                  Flexible(
                    child: TextFormField(
                      showCursor: true,
                      
                      onTap: () {
                        Search(context: context).getAlertDialogBox();
                      },
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
                        Mic mic = Mic();
                        mic.getAlertDialogBox(context);

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
                      ProfileAlert(context: context, data: data).getAlertDialogBox();

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
          style: BorderStyle.solid,
          )
        ),

      ),

    );
  }
}
