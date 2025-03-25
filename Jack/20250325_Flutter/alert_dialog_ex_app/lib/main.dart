import 'package:flutter/material.dart';

import 'view/home.dart';
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
      routes: {
        '/' : (context) => Home(),
        '/secondpage' : (context) => Secondpage(),
      },
    );
  }
}
