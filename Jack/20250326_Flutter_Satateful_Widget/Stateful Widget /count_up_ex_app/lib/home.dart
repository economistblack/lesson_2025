import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int count;
  late Color bodyColor;

  @override
  void initState() {
    super.initState();
    count = 0;
    bodyColor = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        title: Text('Count Up & Down'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '현재 클릭수는 $count 입니다.'
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    addCount();
                  },
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.add),
                  ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  onPressed: () {
                    minusCount();
                  },
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.remove),
                  ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                resetCount();
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 40),
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                
              ), 
              child: Text('클릭수 초기화'))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
                      onPressed: () {
                        addCount();
                      },
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.add),
                      ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
                  onPressed: () {
                    minusCount();
                  },
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.remove),
                  ),
        ],
      ),
              
    );
  } //build
  
  addCount() {
    count++;
    (count%10 == 0) ? bodyColor = Colors.amber : bodyColor = Colors.white;

    setState(() {});
  }
  minusCount() {
    count--;
    (count%10 == 0) ? bodyColor = Colors.amber : bodyColor = Colors.white;
    setState(() {});
  }

  resetCount(){
    count = 0;
    bodyColor = Colors.white;
    setState(() {});
  }

} //Class