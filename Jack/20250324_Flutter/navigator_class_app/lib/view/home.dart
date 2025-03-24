import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/1st'), 
              child: Text('Go to the screen #1'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/2nd'), 
              child: Text('Go to the screen #2'),
              ),
          ],
        ),
      ),
    );
  }
}