import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/bottomnavbar/bottomnavbarScreen.dart';
import 'package:instagram_ui/screens/home/homeScreen.dart';
import 'package:instagram_ui/screens/login/login_screen.dart';
import 'package:instagram_ui/screens/messages/messages_screen.dart';
import 'package:instagram_ui/screens/signup/signup_screen.dart';
import 'package:instagram_ui/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData.dark(),
      // home: SplashScreen(),
      home: MessagesScreen(),
    );
  }
}
