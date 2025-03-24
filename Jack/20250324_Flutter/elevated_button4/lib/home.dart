import 'package:elevated_button4/message.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('4 Button'),
      ),
      body: MyMessage(),
    );
  }
}