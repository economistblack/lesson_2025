import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Exercise 01'),
        centerTitle: false,
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('유비'),
            Text('관우'),
            Text('장비'),
            // SizedBox(
            //   height: 12.5,
            // ),
            Divider(color: Colors.red, thickness: 50, height: 70),
            Text(
              '조조',
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.amber,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 10,
              ),
            ),
            Text('여포'),
            Text('동탁'),
          ],
        ),
      ),
    );
  }
}
