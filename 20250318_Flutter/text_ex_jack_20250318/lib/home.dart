import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row & Column Exercise'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('1', 
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber
                ),),
                Text('2'),
                Text('3'),
              ],),
            Text('4'),
            Text('5'),
            Text('6'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('7'),
                Text('8'),
                Text('9',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],),


        ],),
        ),
    );
  }
}