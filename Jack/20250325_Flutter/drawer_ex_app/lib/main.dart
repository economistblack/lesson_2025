import 'package:drawer_ex_app/view/mail.dart';
import 'package:drawer_ex_app/view/receivedmail.dart';
import 'package:drawer_ex_app/view/sendmail.dart';
import 'package:flutter/material.dart';

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
        '/' : (context) => Mail(),
         '/sendmail' : (context) => Sendmail(),
        '/receivedmail' : (context) => Receivedmail(),
      },
    );
  }
}

