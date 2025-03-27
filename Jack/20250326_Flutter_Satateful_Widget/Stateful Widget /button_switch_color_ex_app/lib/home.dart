import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool switchVaule;
  late Color buttonColor;


  @override
  void initState() {
    super.initState();
    switchVaule = false;
    buttonColor = Colors.blue;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Changed Button color on Switch'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                buttonChange();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: Colors.white,
                minimumSize: Size(100, 40),
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ), 
              child: Text('Flutter'),
              ),
              SizedBox(
                height: 70,
              ),
              Switch(
                value: switchVaule, 
                onChanged: (value) {
                  switchVaule = value;
                  switchChange();
                }
                ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => _showDialog(context),
        child: FloatingActionButton(
          onPressed: () {
            _showDialog(context);
          },
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          child: Icon(Icons.info), 
          ),
      ),
    );
  } // build


  buttonChange(){
    buttonColor == Colors.blue ? 
    (buttonColor = Colors.red, switchVaule = true)
    :
    (buttonColor = Colors.blue, switchVaule = false);

    setState(() {});
  }
  switchChange(){
    switchVaule == false ? 
    (buttonColor = Colors.blue) : (buttonColor = Colors.red);

    setState(() {});
  }
  _showDialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: Text('버튼 클릭 경고'),
          content: Text('아래 버튼을 절대로 누르지 마세요! ㅎㅎㅎㅎ')

        );
      });

  }
} // Class