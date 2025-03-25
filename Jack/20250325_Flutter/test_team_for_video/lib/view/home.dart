import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team'),
      ),body: Center(
        child: Column(
           children: [
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/1st'), 
              child: Text('정서윤'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/2nd'), 
              child: Text('김상범'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/3rd'), 
              child: Text('정도영'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/4th'), 
              child: Text('김지호'),
              ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/5th'), 
              child: Text('박진표'),
              ),
        ]
        ),
      ),
    );
  }
}