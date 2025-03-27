import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Property - 반드시 코멘트 달아야 한다.
  late int count; // 클릭수

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Count Up')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('현재 클릭수는 $count 입니다.'),
            SizedBox(height: 30),
            FloatingActionButton(
              //Scaffod에 있는 버튼은 바디에 떠있는 버튼이다.
              onPressed: () {
                addCount();
              },
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   //Scaffod에 있는 버튼은 바디에 떠있는 버튼이다.
      //   onPressed: () {
      //     addCount();
      //   },
      //   backgroundColor: Colors.red,
      //   foregroundColor: Colors.white,
      //   child: Icon(Icons.add),
      // ),
      floatingActionButton: ElevatedButton(
        onPressed: () => addCount(), 
        child: Text('Add'),
        ),
    );
  } //build

  // ---- Functions ----
  addCount() {
    count++;
    setState(() {});
  }
} //Class
