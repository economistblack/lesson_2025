import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onLongPress: () => print("Long"),
              onPressed: () {
                int intNum1 = 10;
                int intNum2 = 20;
                print("$intNum1 + $intNum2 = ${intNum1 + intNum2}");
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.black,
              ), 
              child: Text(
                'Text Button',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ),
              ElevatedButton(
                onPressed: () =>  print("Elevated Button"), 
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.amber,
                  backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // 숫자가 작을 수록 각져진다.
                  ),
                ),
                child: Text('Elevated Button'),
                ),
                OutlinedButton(
                  onPressed: () => print('outlined button'), 
                  style: OutlinedButton.styleFrom(
                    foregroundColor:  Colors.green,
                    side: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ),
                  child: Text('Outlined Button'),
                  ),
                  TextButton.icon(
                    onPressed: () => print("text button icon"), 
                    icon: Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.red,
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    label: Text('Go to home'),
                    ),
                  ElevatedButton.icon(
                    onPressed: () => print("elevated button icon"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                    ),
                    icon: Icon(
                      Icons.home,
                      size: 20,
                      color: Colors.white,
                    ), 
                    label: Text('Go to Home'),
                    ),
                    OutlinedButton.icon(
                      onPressed: () => print("outlined button icon"),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: Size(150, 40),
                      ),
                      icon: Icon(
                        Icons.home,
                        size: 20,
                        color: Colors.black,
                      ),
                      label: Text('Go to Home'),
                      ),
                  
          ],
        ),
      ),
    );
  }
}