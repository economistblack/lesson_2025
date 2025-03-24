import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Message'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Fluttertoast.showToast( //factory 생성자 .이 있어서
              msg: 'Toast Button is clicked.',
              gravity: ToastGravity.TOP,
              fontSize: 20,
              textColor: Colors.yellow,
              toastLength: Toast.LENGTH_SHORT,
              );
          }, 
          child: Text("Toast Button"),
          ),
      ),
    );
  }
}