import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  const MySliverAppbar({super.key, required this.child, required this.title});
  final Widget child;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      collapsedHeight: 340,
      expandedHeight: 100,
      floating: false,
      pinned: true,
      backgroundColor: Colors.grey,
      centerTitle: true,
      title: Text(
        'Appaaa',
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
          ),
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        expandedTitleScale: 1,
      ),
    );
  }
}
