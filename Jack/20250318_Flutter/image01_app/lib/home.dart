import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: Text('Image 01'),
        backgroundColor: Colors.red[700],
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
              backgroundImage: AssetImage(
                'images/pikachu-1.jpg'
              ),
              radius: 70,
            ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/pikachu-2.jpg'
                      ),
                      radius: 70,
                                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/pikachu-2.jpg'
                      ),
                      radius: 70,
                                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/pikachu-2.jpg'
                      ),
                      radius: 70,
                                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/pikachu-2.jpg'
                      ),
                      radius: 70,
                                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/pikachu-2.jpg'
                      ),
                      radius: 70,
                                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/pikachu-2.jpg'
                      ),
                      radius: 70,
                                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/pikachu-2.jpg'
                      ),
                      radius: 70,
                                ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/pikachu-2.jpg'
                      ),
                      radius: 70,
                                ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
              backgroundImage: AssetImage(
                'images/pikachu-3.jpg'
              ),
              radius: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/pikachu-1.jpg'
                ),
                radius: 70,
              ),
            ),
              CircleAvatar(
              backgroundImage: AssetImage(
                'images/pikachu-3.jpg'
              ),
              radius: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/pikachu-1.jpg'
                ),
                radius: 70,
              ),
            ),
              CircleAvatar(
              backgroundImage: AssetImage(
                'images/pikachu-3.jpg'
              ),
              radius: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/pikachu-1.jpg'
                ),
                radius: 70,
              ),
            ),
              CircleAvatar(
              backgroundImage: AssetImage(
                'images/pikachu-3.jpg'
              ),
              radius: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'images/pikachu-1.jpg'
                ),
                radius: 70,
              ),
            ),
          
            ],
            
          ),
        ),
      ),

    );
  }
}