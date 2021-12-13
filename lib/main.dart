import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:the_social/constants/ConstantColors.dart';
import 'package:the_social/screens/home_screeen.dart';
import 'package:the_social/screens/login_screen.dart';
import 'package:the_social/screens/splashScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.transparent,
      ),
    );
  }
}
