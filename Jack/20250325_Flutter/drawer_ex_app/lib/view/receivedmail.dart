import 'package:flutter/material.dart';

class Receivedmail extends StatelessWidget {
  const Receivedmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Received Mail'),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
    body: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text('유비에게 받은 메일'),
              Text('관우에게 받은 메일'),
              Text('장비에게 받은 메일'),
            ],
          ),
        ],
      ),
    );
  }
}