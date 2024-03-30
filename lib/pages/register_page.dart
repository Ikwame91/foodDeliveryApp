import 'package:flutter/material.dart';
import 'package:food_delivery/components/custom_container.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, this.register});
  final void Function()? register;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final confirmPassswdcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.anchor,
                    size: 135,
                  ),
                  //Hello Again
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Hello There",
                    style: GoogleFonts.sairaStencilOne(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Register Below With Your Details",
                    style: GoogleFonts.bebasNeue(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  MyTextField(
                    controller: emailController,
                    hintText: "Email",
                    obscureText: false,
                  ),
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  MyTextField(
                    controller: confirmPassswdcontroller,
                    hintText: "Confirm Password",
                    obscureText: true,
                  ),
                  CustomContainer(
                    onTap: () {},
                    text: "Register",
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        ' Already a Memeber??',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: widget.register,
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
