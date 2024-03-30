import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  const MySliverAppbar({super.key, required this.child, required this.title});
  final Widget child;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      collapsedHeight: 120,
      expandedHeight: 340,
      floating: false,
      pinned: true,
      backgroundColor: Colors.grey,
      title: title,
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
      flexibleSpace: FlexibleSpaceBar(
        background: child,
      ),
    );
  }
}
