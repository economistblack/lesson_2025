import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 168, 91),
      appBar: AppBar(
        title: Text(
          '영웅 Card',
          style: TextStyle(
            fontWeight: 
            FontWeight.bold
          ),
          ),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        centerTitle: true
      ),
    
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'images/Lee.jpg'
                ),
                radius: 70,
              ),
              Divider(
                color: Colors.grey,
                
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('성웅',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      ),
                      Text('이순신 장군',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                      Text('전적',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
              
                      ),
                      ),
                      Text('62전 62승',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.check_circle_outline
                                ),
                              ),
                              Text('옥표해전전'),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.check_circle_outline
                                ),
                              ),
                              Text('사천포해전'),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.check_circle_outline
                                ),
                              ),
                              Text('당포해전전'),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.check_circle_outline
                                ),
                              ),
                              Text('당포해전전'),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.check_circle_outline
                                ),
                              ),
                              Text('한산도대첩'),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.check_circle_outline
                                ),
                              ),
                              Text('부산포해전'),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.check_circle_outline
                                ),
                              ),
                              Text('명란해전'),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.check_circle_outline
                                ),
                              ),
                              Text('노량해전'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
                
              ),
              
              Image.asset(
                'images/turtle.gif',
                height: 100,
          
              ),
              
              ],
              
              
              
              ),
        ),
            
      ),
    
    );
  }
}