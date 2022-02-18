import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverBar extends StatelessWidget {
  final String title;
  final Widget flexibleSpace;
  final bool? floating;
  final bool? pinned;
  final bool? snap;
  final String type;

   SliverBar({required this.title, required this.flexibleSpace,  this.floating,  this.pinned, this.snap, required this.type}) : super();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,

      child: SliverAppBar(
          expandedHeight: 200.0,
          flexibleSpace:  flexibleSpace,
          floating: floating!,
          pinned: pinned!,
          snap: snap!,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_circle),
              tooltip: 'Add new entry',
              onPressed: () { /* ... */ },
            ),
          ],
        bottom: TabBar(
          indicatorColor: Colors.amberAccent,
          isScrollable: true,
          tabs:  [
            Tab(text: 'For you',),
            Tab(text: 'Top charts',),
            Tab(text: 'Children',),
            Tab(text: 'Premium',),
            Tab(text: 'Categories',),
            Tab(text: 'Editors choice',),

          ],


       ),




      ),


    );
  }
}
