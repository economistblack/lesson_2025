import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/firstpage'), 
              child: Text('Go to the first page'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/secondpage'), 
              child: Text('Go to the second page'),
              ),
          ],
        ),
      ),
    );
  }
}