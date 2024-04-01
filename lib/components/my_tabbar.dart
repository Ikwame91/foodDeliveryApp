import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(controller: tabController, tabs: [
//1st Tab
        Tab(
          icon: Icon(Icons.home),
        ),

//2nd

        Tab(
          icon: Icon(Icons.settings),
        ),

        Tab(
          icon: Icon(Icons.person),
        )
      ]),
    );
  }
}
