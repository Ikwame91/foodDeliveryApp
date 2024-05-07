import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    super.key,
    required this.tabController,
  });
  final TabController tabController;

  //
  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        child: Text(
          category.toString().split(".").last,
          textScaler: TextScaler.linear(0.8),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        padding: EdgeInsets.zero,
        labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 16),
        indicator: BoxDecoration(
          color: Colors.grey[800],
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        controller: tabController,
        tabs: _buildCategoryTabs(),
      ),
    );
  }
}
