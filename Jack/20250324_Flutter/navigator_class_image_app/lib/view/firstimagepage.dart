import 'package:flutter/material.dart';

class FirstImagePage extends StatelessWidget {
  const FirstImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Image Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                  Image.asset(
                  'images/pikachu-1.jpg',
                  width: 100,
                  height: 100,
                ),
                  Image.asset(
                  'images/pikachu-1.jpg',
                  width: 100,
                  height: 100,
                ),
                  ],
                ),
                Image.asset(
                  'images/pikachu-1.jpg',
                  width: 100,
                  height: 100,
                ),
                Image.asset(
                  'images/pikachu-1.jpg',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/pikachu-1.jpg',
                  width: 100,
                  height: 100,
                ),
                Image.asset(
                  'images/pikachu-1.jpg',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/'), 
              child: Text('Go go main'),
              ),
          ],
        ),
      ),
    );
  }
}