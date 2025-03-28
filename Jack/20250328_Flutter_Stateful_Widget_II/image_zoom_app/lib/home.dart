import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late String imageName;
  late String minMaxName;
  late double imageWidth;
  late double imageHeight;
  late bool switchValue;
  late double rotationValue;

  /*
  Teacher::
  late String _lampImage; // Image File Name
  late double _lampWidth; // Image Width
  late double _lampHeight; // Image Height
  late String _buttonName; // Button title
  late bool _switch; // Switch의 켜짐 상태
  late bool _lampSizeStatus; // 현재 화면의 Lamp 크기 (false: 작은 전구)
  */


  @override
  void initState() {
    super.initState();
    imageName = 'lamp_on.png';   // 기본 이미지
    imageWidth = 200;            // 확대 전 가로
    imageHeight = 250;          // 확대 전 세로
    minMaxName = 'image 확대';   // 기본 확대축소 이름
    switchValue = true;         // 기본 스위치 값
    rotationValue = 0;          

    // _lampImage = 'images/lamp_on.png';
    // _lampWidth = 150;
    // _lampHeight = 300;
    // _buttonName = "Image 확대";
    // _switch = true;
    // _lampSizedStatus = true;


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image 확대 및 축소',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 450,
              width: 400,
              child: Column( // Sized Box에 영향을 받지 않도록.. ** 중요 **
                children: [
                  RotationTransition(
                    turns: AlwaysStoppedAnimation(rotationValue/360),
                    child: Image.asset(
                      'images/$imageName',
                      width: imageWidth,
                      height: imageHeight,
                    ),
                  ),
                ],
              ),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  minMaxAction(minMaxName);
                },
                child: 
                Text(minMaxName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 15,
                ),
                ),
                ),
                SizedBox(
                  width: 30,
                ),
              
              Column(
                children: [
                  Text(
                    '전구 스위치',
                    style: TextStyle(
                      fontSize: 9,
                    ),
                    ),
                  Switch(
                    value: switchValue, 
                    activeColor: Colors.red,
                    onChanged: (value) {
                      switchValue = value;
                      onOFFAction();
                    },),
                ],
              )
            ],
          ),
          ],
        ),
      ), 
    );
  } // build
    minMaxAction(String status){
      if (status == 'image 확대'){
        minMaxName = 'image 축소';
        imageWidth = 400;
        imageHeight = 450;
      } else if (status == 'image 축소'){
        minMaxName = 'image 확대';
        imageWidth = 200;
        imageHeight = 250;
        Timer.periodic(Duration(milliseconds: 10), (timer) {
          minRotationAction();
        },);
      }

      setState(() {});
    }
    onOFFAction(){
      switchValue == true ?
      (imageName = 'lamp_on.png') : (imageName = 'lamp_off.png');
      setState(() { });
    }

    minRotationAction(){
      rotationValue += 0.5;
      if(rotationValue >= 360){
        rotationValue = 0;
      }if(minMaxName == 'image 축소'){
        rotationValue = 0;
      }else{
        //rotationValue += 0.5;
      }
      setState(() {});
      }
    
} // Class