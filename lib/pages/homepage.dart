import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/pages/editor_choice.dart';
import 'package:playstore_clone/pages/editor_list.dart';
import 'package:playstore_clone/widget/CustomAppbar.dart';
import 'package:playstore_clone/widget/SliverAppBar.dart';

class Homepage extends StatefulWidget {
  static const String routeName = "/home_page";
  final bool? changeButton;
  TextEditingController? searchColor;


   Homepage({this.changeButton, this.searchColor}) : super();


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color searchColor = Colors.blue;
     bool changeButton = true;
     int selectedIndex = 0;
   moveToHome(BuildContext context) {
     setState(() {
       changeButton = !changeButton;
     });
   }
    void onTapped(int index) {
     setState(() {
       selectedIndex = index;
     });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
          length: 6,
          child: CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverBar(
              floating: true,
              pinned: true,
              snap: false,
              title: 'Search for apps & games',
              flexibleSpace: const FlexibleSpaceBar(
                //
              ),
              ),

               SliverFillRemaining(
                 hasScrollBody: true,
                 child: TabBarView(
              children: [
                 CustomScrollView(
                   physics: NeverScrollableScrollPhysics(),
                    slivers: [
                      SliverList(delegate: SliverChildListDelegate([
                        Expanded(
                        child: Column(
                          children: [
                            EditorList(),
                            EditorList(),
                            EditorList(),
                            EditorList(),
                            EditorList(),
                          ],
                        ),
                        ),




                      ]
                      ),
                      ),
      ]
    ),

                       CustomScrollView(
                         physics: NeverScrollableScrollPhysics(),
                       slivers: [

                      SliverList(delegate: SliverChildListDelegate([
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            color: Colors.blue,
                              child: const Center(
                                 child:  Text('for you tab'),
                      ),


                      ),
                        ),


                       ])),
                  ]

                  ),
                CustomScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    slivers: [
                      SliverList(delegate: SliverChildListDelegate([
                        Expanded(
                          child: Container (
                              height: MediaQuery.of(context).size.height,
                              child: Center(
                                child: Text(
                                  'home Tab',

                                ),
                              )
                          ),
                        ),



                      ]
                      ),
                      ),
                    ]
                ),
                CustomScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    slivers: [
                      SliverList(delegate: SliverChildListDelegate([
                        Expanded(
                          child: Container (
                              height: MediaQuery.of(context).size.height,
                              child: Center(
                                child: Text(
                                  'home Tab',

                                ),
                              )
                          ),
                        ),



                      ]
                      ),
                      ),
                    ]
                ),
                CustomScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    slivers: [
                      SliverList(delegate: SliverChildListDelegate([
                        Expanded(
                          child: Container (
                              height: MediaQuery.of(context).size.height,
                              child: Center(
                                child: Text(
                                  'home Tab',

                                ),
                              )
                          ),
                        ),



                      ]
                      ),
                      ),
                    ]
                ),
                CustomScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    slivers: [
                      SliverList(delegate: SliverChildListDelegate([
                        Expanded(
                          child: Container (
                              height: MediaQuery.of(context).size.height,
                              child: Center(
                                child: Text(
                                  'home Tab',

                                ),
                              )
                          ),
                        ),



                      ]
                      ),
                      ),
                    ]
                ),






                  // SliverToBoxAdapter(
                  //     child: Column(
                  //       children: [
                  //         const SizedBox(
                  //           height: 10,
                  //         ),
                  //         InkWell(
                  //           onTap: () {
                  //             Navigator.pushNamed(context, Editorchoice.routeName);
                  //           },
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: const [
                  //               Expanded(child: Icon(CupertinoIcons.text_badge_checkmark), flex: 1,),
                  //               SizedBox(width: 10,),
                  //               Expanded(child: Text('Editors Choice games',
                  //               style: TextStyle(
                  //                 fontSize: 18,
                  //                 fontWeight: FontWeight.w500,
                  //                 color: Colors.black87
                  //               ),),
                  //                 flex: 4,),
                  //               Expanded(child: Icon(CupertinoIcons.arrow_right),),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //
                  // ),






                        // EditorList();



                  //
                  //  SliverToBoxAdapter(
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  //     child: Row(
                  //       children: const [
                  //       Text('Ads'),
                  //       SizedBox(width: 10,),
                  //       Text('Suggested for you',
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.w600,
                  //         fontSize: 18,
                  //       ),),
                  //       ],
                  //
                  //     ),
                  //   ),
                  // ),




                  ]),
               ),
          ])
          ),



    bottomNavigationBar: SizedBox(
      height: 70,
      child: BottomNavigationBar(
        selectedFontSize: 16,
        unselectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: Colors.green),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,
        iconSize: 30,
        items:  const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.game_controller_solid),
            label: "Games",

          ),


          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.appStore),
            label: "Apps"),

          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.film,),
              label: "Movies",
          ),


        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        onTap: onTapped,
      ),
    ),
    );
  }
}
