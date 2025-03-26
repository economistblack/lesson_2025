import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late TextEditingController textEditingController; // 텍스트 필드가 2개이면 변수도 2개있어야 한다.

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController(); // 생성된 것 값을 주는 것과 같음

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), // 아무곳이나 누르면 키보드 내려감 *** 중요 ***
      child: Scaffold(
        appBar: AppBar(
          title: Text('Single Textfield'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration( //decoration은 InputDecration
                  labelText: '내용을 입력하세요.',
                  border: OutlineInputBorder(), //테두리가 나온다.
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.purple),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton
                (onPressed: () => checkData(),
                 child: Text('출력'),
                 ),
              ),
            ],
          ),
        ),
      ),
    );
  } // build

  // --- Function ---
  checkData(){
    if(textEditingController.text.trim().isEmpty) {
      // Error Message
      outputSnackBar("내용을 입력 하세요!", 2, Colors.red);

    } else{
      // Display
      outputSnackBar("입력하신 내용은 ${textEditingController.text} 입니다.", 3, Colors.blue);


    }// 입력은 .text에 있다. .trim()스페이스를 제거해준다. .isEmpty 비어있냐?
  }

  // errorSnackBar(){
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text("내용을 입력 하세요!"), 
  //       duration: Duration(seconds: 2),
  //       backgroundColor: Colors.red,
  //     ),
  //   );
  // }

  // showSnackBar(){
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text("입력하신 내용은 ${textEditingController.text} 입니다."), 
  //       duration: Duration(seconds: 3),
  //       backgroundColor: Colors.blue,
  //     ),
  //   );
  // }

  outputSnackBar(String content, int durationSecond, Color backColor){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content), 
        duration: Duration(seconds: durationSecond),
        backgroundColor: backColor
      ),
    );
  }

  

} //Clatss