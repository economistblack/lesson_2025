

import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Property
  late List<String> imagesFile; //전역 변수
  late int currentPage;

  @override
  void initState() {
    super.initState();
    imagesFile = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];

    currentPage = 0;

    // Timer설치
    Timer.periodic(Duration(seconds: 3), (timer) {
      changeImage();
    },);
  }

  changeImage(){
    currentPage++;
    if(currentPage >= imagesFile.length){
      currentPage = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('3초마다 이미지 무한 반복'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              imagesFile[currentPage],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // -----------
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/${imagesFile[currentPage]}'
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}