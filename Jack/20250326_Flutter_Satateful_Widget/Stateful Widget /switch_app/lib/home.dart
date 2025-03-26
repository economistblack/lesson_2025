import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool switchValue;
  late String imagePath;
  late Color bodyColor;
  late String appBarTitle;


  @override
  void initState() {
    super.initState();
    switchValue = false;
    imagePath = 'images/smile.png';
    bodyColor = Colors.white;
    appBarTitle = '스마일';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: bodyColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,  //Image/$imageName --> imageName = 'smile.png';
              width: 170,
              
            ),
            SizedBox(
              height: 30,
            ),
            Switch(
              value: switchValue, // 스위치 초기값 켜짐: true 꺼짐: false 그러나 사용자가 바꿀 수 없어서 변수로 주어야 함
              onChanged: (value) { // 사용자가 변경했을 때 value / onChanged 바뀌는 것
                switchValue = value;
                switchImage();
              },
              ),
          ],
        ),
      )
    );
  }
  switchImage(){
    
    switchValue == false ? 
    (imagePath = 'images/smile.png', bodyColor = Colors.white, appBarTitle = '스마일') 
    : 
    (imagePath = 'images/EB_Human_04.png', bodyColor = Colors.amber, appBarTitle = '휴먼') ;
    
    setState(() {});
  }
}