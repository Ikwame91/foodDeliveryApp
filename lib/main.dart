import 'package:flutter/material.dart';
import 'package:food_delivery/auth/login_or_register.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      // themeprovider

      //restaurant provider
      ChangeNotifierProvider(create: (context) => Restaurant())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const LoginOrRegister(),
    );
  }
}
