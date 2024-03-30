import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText,
  });
  final TextEditingController? controller;
  final String? hintText;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade800,
                offset: const Offset(4, 4),
                blurRadius: 15,
                spreadRadius: -3,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 3,
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: TextField(
            controller: controller,
            obscureText: obscureText!,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
