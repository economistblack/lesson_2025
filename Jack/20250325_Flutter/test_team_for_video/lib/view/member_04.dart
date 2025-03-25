import 'package:flutter/material.dart';

class Member04 extends StatelessWidget {
  const Member04({super.key});

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
                    'images/jiho.jpg',
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
            '김지호 ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            '성별 / 생년월일',
            style: TextStyle( 
              color: Colors.black
            ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Text(
              '남자/1995년생',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
          Row(
            children: [
              Icon(Icons.label_important),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("주소:서울시 용산구"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.label_important),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("취미:게임,영화보기,운동"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.label_important),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("주소:서울 용산구"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.label_important),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("MBTI:INTP"),
              )
            ],
          ),
          SizedBox(width: 30,height: 150,),
          Center(
            child:
            ElevatedButton(
              onPressed: () {
              Navigator.pop(context);
              },
              child: Text('Go to First page'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue
              ),
            ),
          ),
        ],
      ),
      )
    );
  }
}