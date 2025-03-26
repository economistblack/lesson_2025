import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed:
                () => snackBarFunction(context, '버튼이 눌렸습니다.', Colors.red, 5),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              maximumSize: Size(200, 40),
            ),
            child: Text(
              'Snackbar Button',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          OutlinedButton(
            onPressed:
                () => snackBarFunction(
                  context,
                  'Elevated Button is clicked',
                  Colors.blue,
                  1,
                ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              maximumSize: Size(200, 40),
            ),
            child: Text(
              'Snackbar Button',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  } //build

  // ----- Functions ------ //
  snackBarFunction(BuildContext context, String message, Color colors, int duration) {
    // BuildContext 타입으로 지정 다이나믹은 너무 느리다
    ScaffoldMessenger.of(context).showSnackBar(
      // showSnackBar를 만드는 메모리 공간을 만드는 context
      SnackBar(
        // 간단한 정보를 사용자에게 보여주는 기능
        content: Text(message),
        backgroundColor: colors,
        duration: Duration(seconds: duration), // 메시지를 보여주는 기간
      ),
    );
  }
} // MySnackBar
