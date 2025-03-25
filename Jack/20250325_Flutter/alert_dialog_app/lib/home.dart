import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog with Gesture'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _showDialog(context), // _ 여기 클래스에서만 사용
          child: Text(
            'Hellow World!'
            ),
            ),
      ),
    );
  } // build

  // --- Functions ---
  _showDialog(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false, // 해당 버튼 적용이 되도록 만듦
      barrierColor: Colors.amber,
      builder: (context){
        return AlertDialog(
          title: Text('Alert Title'),
          content: Text('Hello World를\n Touch했습니다.'),
          actions: [
            Center(
              child: TextButton(
                onPressed: () => Navigator.of(context).pop(), // of(context)가 있어야 Alert 메시지만 종료한다. 
                child: Text('종료')
              ),
            ),
          ],
        );
      },
    );
  }
} // Home