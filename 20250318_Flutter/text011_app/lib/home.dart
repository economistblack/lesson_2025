import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row & Column Exercise')
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('111'),
              Text('222'),
              Text('333'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('444'),
                  Text('555'),
                  Column(
                    children: [
                      Text('aaa'),
                      Text('bbb'),
                      Text('ccc'),
                    ],
                  ),
                ],
              ),
              Text('666'),
            ],
          ),
        ),
      ),
    );
  }
}