import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

  // factory Fluttertoast.showToast(String factoryMessage){
  //   return Fluttertoast(factoryMessage);
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(msg: 'Toast Message 1');
            },
            child: Text('Toast Button 1'),
          ),
          ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(msg: 'Toast Message 2');
            },
            child: Text('Toast Button 2'),
          ),
          ElevatedButton(
            onPressed: snackbarFunction(context, 'SnackBar 1'),
            child: Text('Snackbar Button 1'),
          ),
          ElevatedButton(
            onPressed: snackbarFunction(context, 'SnackBar 2'),
            child: Text('Snackbar Button 2'),
          ),
        ],
      ),
    );
  }

  snackbarFunction(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
    ),
    );
  } // snackbarFunction
} // MyMessage
