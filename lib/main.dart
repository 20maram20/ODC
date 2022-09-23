import 'package:flutter/material.dart';
import 'package:learn/view/pages/ODC.dart';
import 'package:learn/view/pages/add%20note.dart';
import 'package:learn/view/pages/events.dart';
import 'package:learn/view/pages/faq.dart';
import 'package:learn/view/pages/login.dart';
import 'package:learn/view/pages/logout.dart';
import 'package:learn/view/pages/news.dart';
import 'package:learn/view/pages/news2.dart';
import 'package:learn/view/pages/nonote.dart';
import 'package:learn/view/pages/ourpartners.dart';
import 'package:learn/view/pages/sections.dart';
import 'package:learn/view/pages/settings.dart';
import 'package:learn/view/pages/signup.dart';
import 'package:learn/view/pages/splash.dart';
import 'package:learn/view/pages/support.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:login(
      ),

    );
  }
}
