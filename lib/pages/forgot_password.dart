import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Enter Your Email and we will send you a password reset link",
              textAlign: TextAlign.center,
              style: GoogleFonts.bebasNeue(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
            controller: emailController,
            hintText: "Email",
            obscureText: false,
          ),
          const SizedBox(
            height: 20,
          ),
          MaterialButton(
              onPressed: () {},
              color: Colors.orange,
              child: const Text("Reset Password"))
        ],
      ),
    );
  }
}
