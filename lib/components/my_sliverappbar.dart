import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart_page.dart';

class MySliverAppbar extends StatelessWidget {
  const MySliverAppbar({super.key, required this.child, required this.title});
  final Widget child;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      collapsedHeight: 340,
      expandedHeight: 120,
      floating: false,
      pinned: true,
      backgroundColor: Colors.grey,
      centerTitle: true,
      title: Text('Food Delivery App'),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => CartPage())));
          },
          icon: Icon(Icons.shopping_cart),
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
          left: 0,
          right: 0,
          bottom: 0,
        ),
        expandedTitleScale: 1,
      ),
    );
  }
}
