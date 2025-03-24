import 'package:flutter/material.dart';

import 'view/first_page.dart';
import 'view/home.dart';
import 'view/second_page.dart';

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
        '/1st' : (context) => FirstPage(),
        '/2nd' : (context) => SecondPage(),
      },
    );
  }
}

