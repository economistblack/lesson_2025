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
  late TextEditingController ledController;
  late String ledCharacter;


  @override
  void initState() {
    super.initState();
    ledController = TextEditingController();
    ledCharacter = 'Hello World!';
    str =[];
    currentCharacter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LED 광고'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ledCharacter,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('광고 문구를 입력하세요.'), 
              accountEmail: Text(''),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              ),
            TextField(
              controller: ledController,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                buttonAction();
              }, 
              child: Text('전시하기'))

          ],
        ),
      ),
    ); 
  } // build
  buttonAction(){
    ledCharacter = ledController.text;
    str = ledCharacter.split('');
    setState(() {
      Timer.periodic(Duration(seconds: 1), (timer) {
      ledAction();  
    },
    );
    });
  }

  ledAction(){
    if(ledController.text.trim().isEmpty){
      errorSnackBar();
    }else{
    currentCharacter++;

      if(currentCharacter >= str.length && ledCharacter != ''){
        currentCharacter = 0;
        ledCharacter = str[currentCharacter];
      }else{
        ledCharacter += str[currentCharacter];
      }
    }
    setState(() {});
    }

  errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("값을 입력하세요!"), 
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }

  } // Class
