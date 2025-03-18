import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 화면 디자인
      appBar: AppBar( // 상단 바
        title: Text('삼국지'), // 타이틀
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 213, 110, 144), // 배경색
        foregroundColor: Colors.white, // 글자색
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('유비'),
            SizedBox(
              height: 12.5,
            ),
            Text('관우'),
            Text('장비'),
          ],
        )
      ),
    );

  }
}