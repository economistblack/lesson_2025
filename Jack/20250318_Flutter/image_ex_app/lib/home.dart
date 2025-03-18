import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Image Padding'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'images/pikachu-1.jpg',
                height: 130,
                width: 130,
                fit: BoxFit.fill
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'images/pikachu-2.jpg',
                height: 130,
                width: 130,
                fit: BoxFit.fill
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'images/pikachu-3.jpg',
                height: 130,
                width: 130,
                fit: BoxFit.fill
              ),
            ),
          ],
        ),
        ),
    );
  }
}