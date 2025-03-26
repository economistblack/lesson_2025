import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController num1Controller;
  late TextEditingController num2Controller;
  late TextEditingController addResultController;
  late TextEditingController substractResultController;
  late TextEditingController multiplyResultController;
  late TextEditingController divideResultController;
  late TextEditingController guideController;
  late Color bodyColor;
  late bool switchValue;



  @override
  void initState() {
    super.initState();
    num1Controller = TextEditingController();
    num2Controller = TextEditingController();
    addResultController = TextEditingController();
    substractResultController = TextEditingController();
    multiplyResultController = TextEditingController();
    divideResultController = TextEditingController();
    guideController = TextEditingController();
    bodyColor = Colors.white;
    switchValue = false;

  
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: bodyColor,
        appBar: AppBar(
          title: Text('간단한 계산기'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: num1Controller,
                    decoration: InputDecoration(
                      labelText: '정수를 입력하세요.',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: num2Controller,
                    decoration: InputDecoration(
                      labelText: '정수를 입력하세요.',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber),
                    ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          calcAllResult();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          minimumSize: Size(120, 40),
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ), 
                        child: Text('계산하기'),
                        ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          resetNum();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          minimumSize: Size(120, 40),
                          shape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ), 
                        child: Text('지우기'),
                        ),
            
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: guideController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      
                    ),
                    readOnly: true,
                  ),
                  TextField(
                    controller: addResultController,
                    decoration: InputDecoration(
                      labelText: '덧셈 결과 (입력 불가)',
                    ),
                    readOnly: true,
                    
                  ),
                  TextField(
                    controller: substractResultController,
                    decoration: InputDecoration(
                      labelText: '뺄셈 결과 (입력 불가)',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: multiplyResultController,
                    decoration: InputDecoration(
                      labelText: '곱셈 결과 (입력 불가)',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: divideResultController,
                    decoration: InputDecoration(
                      labelText: '나눗셈 결과 (입력 불가)',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Switch(
                    value: switchValue, 
                    onChanged: (value) {
                      switchValue = value;
                      bodyColorChange();
                    },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  } // build

  // --- Functions ---
  calcAllResult(){ 
    if((num1Controller.text.trim().isEmpty) || (num2Controller.text.trim().isEmpty)){
      errorSnackBar();
    } else{
      
      addResultController.text = (double.parse(num1Controller.text) + double.parse(num2Controller.text)).toString();
      substractResultController.text = (double.parse(num1Controller.text) - double.parse(num2Controller.text)).toString();
      multiplyResultController.text = (double.parse(num1Controller.text) * double.parse(num2Controller.text)).toString();
      divideResultController.text = (double.parse(num1Controller.text) / double.parse(num2Controller.text)).toString();
      guideController.text = '***** 계산 완료 *****';
      FocusScope.of(context).unfocus();
    }
    setState(() {});
    }
  errorSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("정수를 입력 하세요!"), 
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ),
    );
  }
    resetNum(){
      num1Controller.text = '';
      num2Controller.text = '';
      addResultController.text = '';
      substractResultController.text = '';
      multiplyResultController.text = '';
      divideResultController.text = '';
      guideController.text = '';
      FocusScope.of(context).unfocus();
      setState(() {});
    }
    bodyColorChange(){
      bodyColor = (switchValue == true) ? Colors.amber : Colors.white;
      setState(() {});
    }


  } // Class