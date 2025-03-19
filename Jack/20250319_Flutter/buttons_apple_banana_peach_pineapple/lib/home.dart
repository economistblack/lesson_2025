import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Button'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/apple.png'
                    ),
                    radius: 70,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/banana.jpg'
                    ),
                    radius: 70,
                  ),
                ],
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/peach.jpg'
                    ),
                    radius: 70,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'images/pineapple.jpg'
                    ),
                    radius: 70,
                  
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton.icon(
                        onPressed: () => print('outlined button apple'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          fixedSize: Size(150, 40),
                          maximumSize: Size(150, 40),
                        ), 
                        label: Text('Apple'),
                        ),
                    ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton.icon(
                        onPressed: () => print('outlined button banana'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          fixedSize: Size(150, 40), 
                          maximumSize: Size(150, 40),
                        ), 
                        label: Text('Banana'),
                        ),
                      ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton.icon(
                        onPressed: () => print('outlined button peach'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          fixedSize: Size(150, 40), 
                          maximumSize: Size(150, 40),
                        ), 
                        label: Text('Peach'),
                        ),
                    ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: OutlinedButton.icon(
                        onPressed: () => print('outlined button pineapple'),
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          fixedSize: Size(150, 40), 
                          maximumSize: Size(150, 40),
                        ), 
                        label: Text('Pineapple'),
                        ),
                      ),
                  ],
                ),
            
              ],
            ),
          ],
        ),
      ),
    );
  }
}