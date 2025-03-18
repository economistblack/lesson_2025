import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
          title: Text('Image Test'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/smile.png',
                // width: 100,
                height: 100,
              ),
              Image.asset(
                'images/smile.png',
                // width: 100,
                height: 100,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'images/smile.png',
                      // width: 100,
                      height: 100,
                    ),
                    Image.asset(
                      'images/smile.png',
                      // width: 100,
                      height: 100,
                    ),
                    Image.asset(
                      'images/smile.png',
                      // width: 100,
                      height: 100,
                    ),
                    Image.asset(
                      'images/smile.png',
                      // width: 100,
                      height: 100,
                    ),
                    Image.asset(
                      'images/smile.png',
                      // width: 100,
                      height: 100,
                    ),
                    Image.asset(
                      'images/smile.png',
                      // width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              Image.asset(
                'images/smile.png',
                // width: 100,
                height: 100,
              ),
              Image.asset(
                'images/smile.png',
                // width: 100,
                height: 100,
              ),
              Image.asset(
                'images/smile.png',
                // width: 100,
                height: 100,
              ),
              Image.asset(
                'images/smile.png',
                // width: 100,
                height: 100,
                fit: BoxFit.contain, // 원본 비율에 맞춘다.
              ),
              Image.asset(
                'images/smile.png',
                width: 50,
                height: 100,
                fit: BoxFit.fill, // 내가 정한 크기에 맞춘다.
              ),
              Image.asset(
                'images/smile.png',
                width: 50,
                height: 100,
                fit: BoxFit.cover, // 규격에 맞게 자른다. 
              ),
            ],
            ),
        ),
      ),
      
      
    );
  }
}