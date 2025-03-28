import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late List str;
  late int currentCharacter;
  late String character;

  @override
  void initState() {
    super.initState();
    
    String data = '대한민국';
    str = data.split(''); // data에서 한글자씩 자른다. ['대', '한', '민', '국']
    currentCharacter = 0;
    character = str[currentCharacter];

    // Timer 설치
    Timer.periodic(Duration(seconds: 2), (timer) {
      chanageCharater();
    },);
  }

  chanageCharater(){
    currentCharacter++;
    if(currentCharacter >= str.length){
      currentCharacter = 0;
      character =  str[currentCharacter];
    }else{
      character += str[currentCharacter];
    }
    setState(() {});
  }


  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LED 광고'),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              character,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}