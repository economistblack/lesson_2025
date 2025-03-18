import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text with Column Row2',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.email_rounded),
                    Text('James'),
                    Column(
                      children: [
                        Icon(Icons.email_rounded),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.account_circle),
                        ),
                        Icon(Icons.account_balance),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Icon(Icons.account_circle),
                    Text('Cathy'),
                    Column(
                      children: [
                        Text('James'),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Cathy'),
                        ),
                        Text('Kenny'),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.account_balance),
                    Text('Kenny'),
                    Column(
                      children: [
                        Text(''),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(''),
                        ),
                        Text(''),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            
          Row(
            children: [
              Icon(
                Icons.email_rounded
              ),
              Text('James'),
            ],
            ),
          Row(
            children: [
              Icon(
                Icons.account_circle
              ),
              Text('Cathy'),
            ],
            ),
          Row(
            children: [
              Icon(
                Icons.account_balance
              ),
              Text('Kenny'),
            ],
            ),
          
          ],
        ),
      ),
    );
  }
}
