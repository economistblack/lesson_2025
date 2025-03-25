import 'package:flutter/material.dart';

class Member02 extends StatelessWidget {
  const Member02({super.key});

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
                padding: const EdgeInsets.fromLTRB(0,0,0,40),
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/livai.png',
                  ),
                  radius: 90,
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,20),
                child: Divider(
                color: Colors.grey,
                thickness:1,
                ),
              ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,5),
            child: Text(
              '이름',
              style: TextStyle(
                color: Colors.black,
              ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,5),
            child: Text(
              '김상범',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Text(
              '성별 / 나이(년생)',
              style: TextStyle( 
                color: Colors.black
              ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            child: Text(
              '남 / 1999년생',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("단국대학교 경영학부 경영학, SW융합경영경제 전공"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("데이터 분석 기획 희망"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("ENTP"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("Rh+ A"),
              )
            ],
          ),
          Center(
            child:
            Padding(
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
                icon: Icon(
                  Icons.home,
                color: Colors.white,
                ),
                label:Text('Go to Home')),
            ),
          ),
          ],
        ),
      )
    );
  }
}