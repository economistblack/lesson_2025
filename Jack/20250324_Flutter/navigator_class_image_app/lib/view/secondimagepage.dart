import 'package:flutter/material.dart';

class SecondImagePage extends StatelessWidget {
  const SecondImagePage({super.key});

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
              children: [
                Image.asset(
                  'images/smile.png'
                ),
                Image.asset(
                  'images/smile.png'
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