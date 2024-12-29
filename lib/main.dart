import 'package:flutter/material.dart';
import 'package:space_task/earth.dart';
import 'package:space_task/home.dart';
import 'package:space_task/page_one.dart';
import 'package:space_task/page_two.dart';
void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/home':(_)=>HomeScreen(),
        '/page_one':(_)=>PageOne(),
        '/page_two':(_)=>PageTwo(),
        '/earth':(_)=>Earth(),
      },
    );
  }
}

