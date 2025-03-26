import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2nd'),
      ),
      body: Center(
        child: Text('Screen 2nd'),
      ),
    );
  }
}