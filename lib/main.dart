import 'package:cartify/Pages/bottomnav.dart';
import 'package:cartify/Pages/home.dart';
import 'package:cartify/Pages/login.dart';
import 'package:cartify/Pages/onboarding.dart';
import 'package:cartify/Pages/product_detail.dart';
import 'package:cartify/Pages/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SignUp(),
    );
  }
}

