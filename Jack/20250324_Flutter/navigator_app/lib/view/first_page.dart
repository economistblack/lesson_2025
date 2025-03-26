import 'package:flutter/material.dart';
import 'package:navigator_app/view/secound_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SecoundPage();
            }));
          },
          child: Text('Go to the second page'),
        ),
      )
    );
  }
}