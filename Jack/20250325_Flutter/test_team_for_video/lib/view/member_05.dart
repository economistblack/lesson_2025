import 'package:flutter/material.dart';

class Member05 extends StatelessWidget {
  const Member05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('POTATO 소개'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/jina.jpg'),
                  radius: 100,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Divider(color: Colors.grey, thickness: 1),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Text('이름', style: TextStyle(color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Text(
                '박진표',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Text('성별 / 나이(년생)', style: TextStyle(color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Text(
                '남 / 1971년생, 돼지띠',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text("MBTI:INTJ"),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text("경기도 화성시 거주"),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text("AI 기반 빅데이터 활용 기술 개발"),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  child: Text("NickName : POTATO"),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color.fromARGB(255, 164, 164, 164),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  icon: Icon(Icons.home, color: Colors.white),
                  label: Text('Go to Home'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
