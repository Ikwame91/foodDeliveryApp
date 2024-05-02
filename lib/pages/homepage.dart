import 'package:flutter/material.dart';
import 'package:food_delivery/components/current_location.dart';
import 'package:food_delivery/components/description_box.dart';
import 'package:food_delivery/components/food_tile.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_sliverappbar.dart';
import 'package:food_delivery/components/my_tabbar.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/food_page.dart';
import 'package:food_delivery/pages/settings_page.dart';
import 'package:provider/provider.dart';

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
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
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

//sort out and return a list of food items that belong to a specific category
  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullmenu) {
    return fullmenu.where((food) => food.category == category).toList();
  }

//retuurn lists of foods in a given category
  List<Widget> getFoodInThisCategory(List<Food> fullmenu) {
    return FoodCategory.values.map((category) {
      //get category menu
      List<Food> categorymenu = _filterMenuByCategory(category, fullmenu);
      return ListView.builder(
        itemCount: categorymenu.length,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          //get individual food
          final food = categorymenu[index];
          return FoodTile(
            food: food,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FoodPage(food: food),
              ),
            ),
          );
        },
      );
    }).toList();
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

                        //descriptive box
                        DescriptionBox()
                      ],
                    ),
                  ),
                ],
            body: Consumer<Restaurant>(
              builder: (context, restaurant, child) {
                return TabBarView(
                  controller: _tabController,
                  children: getFoodInThisCategory(restaurant.menu),
                );
              },
            )),
      ),
    );
  }
}
