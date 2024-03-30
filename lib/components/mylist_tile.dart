import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  const MyDrawerTile({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });
  final IconData icon;
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: Colors.grey[100]),
        title: Text(
          text,
          style: TextStyle(color: Colors.grey[100]),
        ),
      ),
    );
  }
}
