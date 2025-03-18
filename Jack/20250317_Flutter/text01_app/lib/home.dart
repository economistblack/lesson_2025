import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Row'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('James'),
              Text('Cathy'),
              Text('Kenny'),
            ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('James'),
              Text('Cathy'),
              Text('Kenny'),
            ],
            ),
        ],
      ),
    );
  }
}