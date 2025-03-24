import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Go to the main page'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/firstimagepage'), 
              child: Text('Go to second image page'),
              ),
          ],
        ),
      ),
    );
  }
}