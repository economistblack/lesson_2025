import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // 컨텍스트를 메모리에서 팝한다. 즉 첫 번째 페이지 위에 올라온 두 번째 페이지를 없앤다.
              },
              style: ElevatedButton.styleFrom(
                maximumSize: Size(300, 40),
                fixedSize: Size(250, 40)
              ),
              child: Text('Go to the second page'),
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(context);
                
              }, 
              style: ElevatedButton.styleFrom(
                minimumSize: Size(300, 40),
                fixedSize: Size(250, 40)
              ),
              child: Text('Go to the first page'),
              ),

        ],)
      ),
    );
  }
}