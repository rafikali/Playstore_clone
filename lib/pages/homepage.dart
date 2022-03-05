import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:playstore_clone/constants/image.dart';
import 'package:playstore_clone/pages/editor_choice.dart';
import 'package:playstore_clone/pages/editor_list.dart';
import 'package:playstore_clone/widget/CustomAppbar.dart';
import 'package:playstore_clone/widget/SliverAppBar.dart';
import 'package:playstore_clone/widget/blank_page.dart';
import 'package:playstore_clone/widget/custom_scroll_view.dart';

class Homepage extends StatefulWidget {
  static const String routeName = "/home_page";
  final bool? changeButton;

  TextEditingController? searchColor;

  ScrollController? scrollController;
  Homepage({this.changeButton, this.searchColor, this.scrollController}) : super();


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Color searchColor = Colors.blue;
     bool changeButton = true;
     int selectedIndex = 0;
     ScrollController scrollController = ScrollController();
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
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverBar(
                  floating: true,
                  pinned: true,
                  snap: false,
                  title: 'Search for apps & games',
                  flexibleSpace: const FlexibleSpaceBar(
                    //
                  ),
                )
              ];

            },
              body: TabBarView(
                  children: [
              Customscroll(
              //edited
              editorchoice: Editorchoice(
              route: blank.routeName,
                  leadingicon: FontAwesomeIcons.clipboardList,
                  title: 'Editors Choice games',
                  trailingicon: CupertinoIcons.arrow_right),
              editorlistdynamic: const Editorlistdynamic(
                  mainImage: ImageConstant.COD,
                  logoImage: ImageConstant.COD_logo,
                  title: 'Call Of Duty',
                  category1: 'Action',
                  category2: 'BattleGround',
                  rating: '4.4',
                  size: '1.5GB')),

            Customscroll(
                editorchoice: Editorchoice(
                    route: blank.routeName,
                    leadingicon: FontAwesomeIcons.clipboardList,
                    title: 'Editors Choice chart',
                    trailingicon: CupertinoIcons.arrow_right),
                editorlistdynamic: const Editorlistdynamic(
                    mainImage: ImageConstant.pubg,
                    logoImage: ImageConstant.pubg_logo,
                    title: 'PUBG MOBILE',
                    category1: 'Action',
                    category2: 'Shooter',
                    rating: '4.2',
                    size: '740MB')

            ),
            Customscroll(
                editorchoice: Editorchoice(
                    route: blank.routeName,
                    leadingicon: FontAwesomeIcons.clipboardList,
                    title: 'Editors Choice chart',
                    trailingicon: CupertinoIcons.arrow_right),
                editorlistdynamic: const Editorlistdynamic(
                    mainImage: ImageConstant.fortnight,
                    logoImage: ImageConstant.fortnight_logo,
                    title: 'FORTNITE',
                    category1: 'Action',
                    category2: 'Shooter',
                    rating: '4.5',
                    size: '1GB')

            ),
            Customscroll(
                editorchoice: Editorchoice(
                    route: blank.routeName,
                    leadingicon: FontAwesomeIcons.clipboardList,
                    title: 'Editors Choice chart',
                    trailingicon: CupertinoIcons.arrow_right),
                editorlistdynamic:  const Editorlistdynamic(
                    mainImage: ImageConstant.spiderman,
                    height: 250.0,
                    width: 250.0,
                    logoImage: ImageConstant.spiderman_logo,
                    title: 'Miles morales',
                    category1: 'Action',
                    category2: 'Adventure',
                    rating: '4.5',
                    size: '1GB')

            ),
            Customscroll(
                editorchoice: Editorchoice(
                    route: blank.routeName,
                    leadingicon: FontAwesomeIcons.clipboardList,
                    title: 'Editors Choice chart',
                    trailingicon: CupertinoIcons.arrow_right),
                editorlistdynamic: const Editorlistdynamic(
                    mainImage: ImageConstant.Coc,
                    logoImage: ImageConstant.Coc_logo,
                    title: 'Clash of Clan',
                    category1: 'Strategic',
                    category2: 'war',
                    rating: '4.5',
                    size: '188MB')

            ),

            Customscroll(
                editorchoice: Editorchoice(
                    route: blank.routeName,
                    leadingicon: FontAwesomeIcons.clipboardList,
                    title: 'Editors Choice chart',
                    trailingicon: CupertinoIcons.arrow_right),
                editorlistdynamic: const Editorlistdynamic(
                    mainImage: ImageConstant.Gta,
                    logoImage: ImageConstant.Gta_logo,
                    title: 'GTA-5',
                    category1: 'Action',
                    category2: 'Mission',
                    rating: '4',
                    size: '3GB')

            ),
            // controller: scrollController,
            // shrinkWrap: true,
            // slivers: [
            //   SliverBar(
            //   floating: true,
            //   pinned: true,
            //   snap: false,
            //   title: 'Search for apps & games',
            //   flexibleSpace: const FlexibleSpaceBar(
            //     //
            //   ),
            //   ),

            // SliverFillRemaining(
              //    child: TabBarView(
              // children: [
              //    Customscroll(
              //      //edited
              //        editorchoice: Editorchoice(
              //            route: blank.routeName,
              //            leadingicon: FontAwesomeIcons.clipboardList,
              //            title: 'Editors Choice games',
              //            trailingicon: CupertinoIcons.arrow_right),
              //        editorlistdynamic: const Editorlistdynamic(
              //            mainImage: ImageConstant.COD,
              //            logoImage: ImageConstant.COD_logo,
              //            title: 'Call Of Duty',
              //            category1: 'Action',
              //            category2: 'BattleGround',
              //            rating: '4.4',
              //            size: '1.5GB')),
              //
              //          Customscroll(
              //              editorchoice: Editorchoice(
              //                  route: blank.routeName,
              //                  leadingicon: FontAwesomeIcons.clipboardList,
              //                  title: 'Editors Choice chart',
              //                  trailingicon: CupertinoIcons.arrow_right),
              //              editorlistdynamic: const Editorlistdynamic(
              //                  mainImage: ImageConstant.pubg,
              //                  logoImage: ImageConstant.pubg_logo,
              //                  title: 'PUBG MOBILE',
              //                  category1: 'Action',
              //                  category2: 'Shooter',
              //                  rating: '4.2',
              //                  size: '740MB')
              //
              //   ),
              //   Customscroll(
              //       editorchoice: Editorchoice(
              //           route: blank.routeName,
              //           leadingicon: FontAwesomeIcons.clipboardList,
              //           title: 'Editors Choice chart',
              //           trailingicon: CupertinoIcons.arrow_right),
              //       editorlistdynamic: const Editorlistdynamic(
              //           mainImage: ImageConstant.fortnight,
              //           logoImage: ImageConstant.fortnight_logo,
              //           title: 'FORTNITE',
              //           category1: 'Action',
              //           category2: 'Shooter',
              //           rating: '4.5',
              //           size: '1GB')
              //
              //   ),
              //   Customscroll(
              //       editorchoice: Editorchoice(
              //           route: blank.routeName,
              //           leadingicon: FontAwesomeIcons.clipboardList,
              //           title: 'Editors Choice chart',
              //           trailingicon: CupertinoIcons.arrow_right),
              //       editorlistdynamic:  const Editorlistdynamic(
              //           mainImage: ImageConstant.spiderman,
              //           height: 250.0,
              //           width: 250.0,
              //           logoImage: ImageConstant.spiderman_logo,
              //           title: 'Miles morales',
              //           category1: 'Action',
              //           category2: 'Adventure',
              //           rating: '4.5',
              //           size: '1GB')
              //
              //   ),
              //   Customscroll(
              //       editorchoice: Editorchoice(
              //           route: blank.routeName,
              //           leadingicon: FontAwesomeIcons.clipboardList,
              //           title: 'Editors Choice chart',
              //           trailingicon: CupertinoIcons.arrow_right),
              //       editorlistdynamic: const Editorlistdynamic(
              //           mainImage: ImageConstant.Coc,
              //           logoImage: ImageConstant.Coc_logo,
              //           title: 'Clash of Clan',
              //           category1: 'Strategic',
              //           category2: 'war',
              //           rating: '4.5',
              //           size: '188MB')
              //
              //   ),
              //
              //   Customscroll(
              //       editorchoice: Editorchoice(
              //           route: blank.routeName,
              //           leadingicon: FontAwesomeIcons.clipboardList,
              //           title: 'Editors Choice chart',
              //           trailingicon: CupertinoIcons.arrow_right),
              //       editorlistdynamic: const Editorlistdynamic(
              //           mainImage: ImageConstant.Gta,
              //           logoImage: ImageConstant.Gta_logo,
              //           title: 'GTA-5',
              //           category1: 'Action',
              //           category2: 'Mission',
              //           rating: '4',
              //           size: '3GB')
              //
              //   ),






                  // SliverToBoxAdapter(
                  //     child: Column(
                  //       children: [
                  //         const SizedBox(
                  //           height: 10,
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
