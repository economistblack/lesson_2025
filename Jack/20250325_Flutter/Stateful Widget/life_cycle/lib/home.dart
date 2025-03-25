import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
} // 보안 때문에 Class를 두개를 써서 _프라이빗을 사용한다.

class _HomeState extends State<Home> {
  // Property(Field, Attribute)
  late String buttonState;
  late Color buttonColor;
  late Color buttonTextColor;

  @override
  void initState() {
    super.initState();
    buttonState = "OFF";
    buttonColor = Colors.blue;
    buttonTextColor = Colors.white;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Life cycle'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _onClick(), 
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                foregroundColor: buttonTextColor,
              ),
              child: Text('버튼을 누르세요.'),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('버튼 상태:'),
                Text(buttonState),
              ],
            )
          ],
        ),
      ),
    );
  } // build

  // --- functions ---
  _onClick(){
    // if(buttonState == "OFF"){
    //   buttonState = "ON";
    // }else{
    //   buttonState = "OFF";
    // };
    // buttonState = (buttonState == "ON" ? "OFF" : "ON");
    // buttonColor = (buttonColor == Colors.blue ? Colors.red : Colors.blue);
    // buttonTextColor = (buttonTextColor == Colors.white ? Colors.black : Colors.white);
    
    (buttonState == "OFF") ? (buttonState="ON", buttonColor=Colors.red, buttonTextColor = Colors.black) : (buttonState="OFF", buttonColor=Colors.blue, buttonTextColor = Colors.white);
    print(buttonState);
    setState(() {});
  }

} // Clas