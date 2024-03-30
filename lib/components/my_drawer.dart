import 'package:flutter/material.dart';
import 'package:food_delivery/components/mylist_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    this.onSettingsTap,
    this.onSignoutTap,
  });
  final void Function()? onSettingsTap;
  final void Function()? onSignoutTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.person,
                  size: 100,
                  color: Colors.grey[100],
                ),
              ),
              MyDrawerTile(
                onTap: () {
                  Navigator.pop(context);
                },
                icon: Icons.home,
                text: 'H O M E',
              ),
              MyDrawerTile(
                onTap: onSettingsTap,
                icon: Icons.settings,
                text: 'S E T T I N G S',
              ),
            ],
          ),
          MyDrawerTile(
            onTap: onSignoutTap,
            icon: Icons.logout,
            text: 'S I G N O U T',
          ),
        ],
      ),
    );
  }
}
