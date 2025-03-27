import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late String buttonText;
  late bool buttonCheck; // Hello:true, Flutter:false
  late Color buttonBackColor;
  late Color buttonForeColor;
  late int clickCount;
  late Color bodyBackColor; // 화변 전체 색깔 정의


  @override
  void initState() {
    super.initState();
    buttonText = "Hello";
    buttonCheck = true;
    buttonBackColor = Colors.blue;
    buttonForeColor = Colors.black;
    bodyBackColor = Colors.white;
    clickCount = 0;
    
  }

  // 실행 후에 메모리에 다 올라가 있다. 다시 실행하지 않음



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyBackColor,
      appBar: AppBar(
        title: Text('Change button color & Text'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
            onPressed: () {
              onClick();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonBackColor,
            ),
            child: Text(
              buttonText
            ),
            ),
            Text('클릭 횟수 : $clickCount'),
          ],
        ),
      ),
    );
  } // build

// -- Function --

onClick() {
  // clickCount++;

  // print("현재 상태 : $buttonText , $buttonCheck, ${buttonBackColor == Colors.blue ? "Blue":"Amber"}, ${buttonForeColor == Colors.black ? "Black" : "White"}");
  // if(buttonCheck == true && clickCount >= 10) {
  //   buttonText = "Flutter";
  //   buttonCheck = false;
  //   buttonBackColor = Colors.amber;
  //   buttonForeColor = Colors.white;
  //   bodyBackColor = Colors.white;
  //   clickCount = 0;
  // }else if(buttonCheck == false && clickCount >=10){
  //   buttonText = "Hello";
  //   buttonCheck = true;  
  //   buttonBackColor = Colors.blue;
  //   buttonForeColor = Colors.black;
  //   bodyBackColor = Colors.green;
  //   clickCount = 0;
  // }
  // print("바뀔 상태 : $buttonText , $buttonCheck, ${buttonBackColor == Colors.blue ? "Blue":"Amber"}, ${buttonForeColor == Colors.black ? "Black" : "White"}");
  // print("----------");

// 비교 대상이 bool이라 String보다 훨씬 빠르다.
  clickCount++;
  if(clickCount >= 10 && clickCount%2 ==0) {
    buttonText = "Flutter";
    buttonCheck = false;
    buttonBackColor = Colors.amber;
    buttonForeColor = Colors.white;
    bodyBackColor = Colors.white;
  }

  setState(() {});
}

} // Class