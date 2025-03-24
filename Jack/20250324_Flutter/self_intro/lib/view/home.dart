import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team'),
      ),body: Center(
        child: Column( children: [
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/1st'), 
              child: Text('Go to the Screen #1'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/2nd'), 
              child: Text('Go to the Screen #2'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/3rd'), 
              child: Text('Go to the Screen #3'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/4th'), 
              child: Text('Go to the Screen #4'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/5th'), 
              child: Text('Go to the Screen #5'),
              ),
        ]
        ),
      ),
    );
  }
}