import 'package:flutter/material.dart';

class Member01 extends StatelessWidget {
  const Member01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/Lee.jpg',
                  ),
                  radius: 70,
                ),
              ),
            ),
              Divider(
              color: Colors.grey,
              thickness:1,
              ),
          Text(
            '이름',
            style: TextStyle(
              color: Colors.black,
            ),
            ),
          Text(
            '본인 성함 작성',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            '성별 / 나이(년생)',
            style: TextStyle( 
              color: Colors.black
            ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Text(
              '본인 성별 및 년생 작성',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("특징1"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("특징2"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("특징3"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("특징4"),
              )
            ],
          ),
          Center(
            child:
            ElevatedButton(
              onPressed: () {
              Navigator.pop(context);
              },
              child: Text('Go to First page')),
          ),
          ],
        
        ),
      )
    );
  }
}