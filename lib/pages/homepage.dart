import 'package:flutter/material.dart';
import 'package:food_delivery/components/current_location.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_sliverappbar.dart';
import 'package:food_delivery/components/my_tabbar.dart';
import 'package:food_delivery/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  //
  void onSettingsTap() {
    Navigator.pop(context);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SettingsPage(),
        ));
  }

  void onSignoutTap() async {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        drawer: MyDrawer(
          onSettingsTap: onSettingsTap,
          onSignoutTap: onSignoutTap,
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            MySliverAppbar(
              title: MyTabBar(tabController: _tabController),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Divider(
                    indent: 25,
                    endIndent: 25,
                  ),

                  //current location
                  CurrentLocation(),

                  //descriptive bix
                ],
              ),
            ),
          ],
          body: TabBarView(controller: _tabController, children: [
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Text("FIRST TAB");
                }),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Text("SECOND TAB");
                }),
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Text("THIRD TAB");
                })
          ]),
        ),
      ),
    );
  }
}
