import 'package:flutter/material.dart';
import 'package:taskmanagementproject/page/Loginpage.dart';
import 'package:taskmanagementproject/page/PrivacyPolicy.dart';

import 'package:taskmanagementproject/page/feedback.dart';
import 'package:taskmanagementproject/page/leaderboard.dart';



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
      title: 'Task Management',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor:Color(0xFF186565),
          primaryColor:Color(0xFF186565),
      ),
      home: LoginPage()




    );
  }
}