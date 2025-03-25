import 'package:flutter/material.dart';

class Member03 extends StatelessWidget {
  const Member03({super.key});

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
                    'images/98_98_icon.png',
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
              color: Colors.grey,
            ),
            ),
          Text(
            '정도영 (Jack Jung)',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            '성별 / 나이(년생)',
            style: TextStyle( 
              color: Colors.grey
            ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Text(
              '남성 / 1979년생',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
          Row(
            children: [
              Icon(Icons.home),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("홈페이지: economistblack.org"),
              )
            ],
          ),
          Row(
            children: [
              Icon(Icons.wine_bar),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("가장 좋아하는 와인: St HENRI SHIRAZ"),
              )
            ],
          ),
          Column(
            children: [
              SizedBox(
                width: 80,
                height: 10,
              ),
              Image.asset(
                'images/henry.png',
                width: 50,
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("Winery: Penfolds"),
              )
            ],
            
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("Grapes: Shiraz/Syrah"),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Icon(Icons.check_circle_outline),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("Alcohol content:  14.5%"),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 50,
              ),
              Icon(Icons.question_mark),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                child: Text("궁금한 위스키: Lagavulin"),
              ),
              SizedBox(
                width: 60,
              ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/Lagavulin.jpg'
                ),
                radius: 50,
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 50,
              ),

            ],
            
          ),
          Center(
            child:
            ElevatedButton(
              onPressed: () {
              Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              child: Text('홈으로 이동',
                
              ),
              ),
          ),
      
          ],
        
        ),
      )
    );
  }
}