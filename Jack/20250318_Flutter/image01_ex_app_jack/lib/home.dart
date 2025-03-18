import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('영웅 Card',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/Lee.jpg'
                ),
                radius: 50,
              ),
            ],
          ),
        Row(
          children: [
            Text('성운'),
          ],
        ),
        Row(
          children: [
            Text('이순신 장군'),
          ],
        ),
        Row(
          children: [
            Text('전적'),
          ],
        ),
        Row(
          children: [
            Text('62전 62승'),
          ],
        ),
        Row(
          children: [
            Icon(
              Icons.email_rounded
            ),
            Text('옥표해전전'),
          ],
        ),

        ],
      ),
    );
  }
}