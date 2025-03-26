import 'package:flutter/material.dart';

import 'view/firstimagepage.dart';
import 'view/firstpage.dart';
import 'view/home.dart';
import 'view/secondimagepage.dart';
import 'view/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => Home(),
        '/firstpage' : (context) => FirstPage(),
        '/firstimagepage' : (context) => FirstImagePage(),
        '/secondpage' : (context) => SecondPage(),
        '/secondimagepage' : (context) => SecondImagePage(),
      },
    );
  }
}


