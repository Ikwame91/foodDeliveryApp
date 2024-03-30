import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer.dart';
import 'package:food_delivery/components/my_sliverappbar.dart';
import 'package:food_delivery/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          appBar: AppBar(
            title: const Text("Home Page"),
            centerTitle: true,
          ),
          drawer: MyDrawer(
            onSettingsTap: onSettingsTap,
            onSignoutTap: onSignoutTap,
          ),
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const MySliverAppbar(
                title: Text("data"),
                child: Text("data"),
              ),
            ],
            body: Container(
              color: Colors.blue,
            ),
          )),
    );
  }
}
