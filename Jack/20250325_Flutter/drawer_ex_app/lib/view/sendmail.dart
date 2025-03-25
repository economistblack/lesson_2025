import 'package:flutter/material.dart';

class Sendmail extends StatelessWidget {
  const Sendmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Mail'),
        centerTitle: true,
        backgroundColor: Colors.green,
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
              Text('유비에게 보낸 메일'),
              Text('관우에게 보낸 메일'),
              Text('장비에게 보낸 메일'),
            ],
          ),
        ],
      ),
    );
  }
}