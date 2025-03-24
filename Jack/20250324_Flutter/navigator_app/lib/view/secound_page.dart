import 'package:flutter/material.dart';
import 'package:navigator_app/view/third_page.dart';

class SecoundPage extends StatelessWidget {
  const SecoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // 컨텍스트를 메모리에서 팝한다. 즉 첫 번째 페이지 위에 올라온 두 번째 페이지를 없앤다.
              }, 
              child: Text('Go to the first page'),
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ThirdPage();
                }));
              }, 
              child: Text('Go to the third page'),
              ),
          ],
        ),
      )
    );
  }
}