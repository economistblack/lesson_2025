import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: Text('2번째 페이지 입니다.'),
      )
    );
  }
}