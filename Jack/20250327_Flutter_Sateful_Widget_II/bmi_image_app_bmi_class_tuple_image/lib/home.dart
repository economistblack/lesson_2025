import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late TextEditingController heightController;
  late TextEditingController weightController;
  late String imagePath;
  late String bmiResult;
  late String levelDescription;
  late String totalDescription;

  @override
  void initState() {
    super.initState();
    heightController = TextEditingController();
    weightController = TextEditingController();
    imagePath = 'images/bmi.png';
    bmiResult = '';
    levelDescription = '';
    totalDescription = '';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('BMI 계산기'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                TextField(
                  controller: heightController,
                  decoration: InputDecoration(
                    labelText: '신장을 입력하세요. (단위 cm)',
                  ),
                  keyboardType: TextInputType.text,
                ),
                TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                    labelText: '몸무게를 입력하세요. (단위 kg)',
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    calcBMI();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(200,40),
                  ),
                  child: Text('BMI 계산'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(totalDescription,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  Image.asset(
                    imagePath
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                  onPressed: () {
                    resetAction();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(200,40),
                  ),
                  child: Text('초기화'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  } //build
  calcBMI(){
    double bmiIndex = 0;

    if(heightController.text.trim().isEmpty || int.parse(heightController.text) <= 0 || weightController.text.trim().isEmpty || int.parse(weightController.text) <= 0){
      heightController.text = '정상적인 값을 입력하세요.';
      weightController.text = '정산적인 값을 입력하세요.';
      totalDescription = '정상적인 값을 입력하세요!!!!!!!';
    }else{

    bmiIndex = double.parse(weightController.text) / ((double.parse(heightController.text)/100) * (double.parse(heightController.text)/100)); 

    bmiResult = bmiIndex.toStringAsFixed(1);
    

    if(bmiIndex <= 18.4) {
      levelDescription = '저체중';
      imagePath = 'images/underweight.png';
    }if(bmiIndex >= 18.5 && bmiIndex <=22.9){
      levelDescription = '정상체중';
      imagePath = 'images/normal.png';
    }if(bmiIndex >= 23 && bmiIndex <= 24.9){
      levelDescription = '과체중';
      imagePath = 'images/risk.png';
    }if(bmiIndex >= 25 && bmiIndex <=29.9){
      levelDescription = '비만';
      imagePath = 'images/overweight.png';
    }if(bmiIndex >= 30){
      levelDescription = '고도비만';
      imagePath = 'images/obese.png';
    }

    totalDescription = '귀하의 bmi지수는 $bmiResult이고 $levelDescription 입니다.';
    FocusScope.of(context).unfocus();
    }
    setState(() {});
  }

  resetAction(){
    heightController.text = '';
    weightController.text = '';
    totalDescription = '';
    imagePath = 'images/bmi.png';


    setState(() {});

  }

} //Class