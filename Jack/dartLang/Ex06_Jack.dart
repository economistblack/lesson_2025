main(){
  double height =170;
  double weight =80;

  Bmi bmi = Bmi(height, weight);
  String bmiResult = bmi.bmiCalc();

  

  print("키 ${height}cm에 몸무게 ${weight}Kg인 사람은 '$bmiResult' 입니다.");

}



class Bmi {
  late double height;
  late double weight;
  late String s;


  Bmi(height, weight)
  : this.height = height,
    this.weight = weight;

  // factory Bmi.check(double heightF, double weightF){
  //   double heightF = 0;
  //   double weightF = 0;
    

  //   if(heightF <= 0 || weightF <= 0){
  //     // print("양수 또는 정상적인 값을 입력하세요!!!! ***경고***");
  //   }else{
  //     // print("정상적인 변수가 입력 되었습니다.");
  //   }

  //   return Bmi(heightF, weightF);
  // }


  String bmiCalc(){
    String result = "";
    double bmiIndex = weight/((height/100)*(height/100));
    print(bmiIndex);
    List<String> levels = ["저체중", "정상체중", "과체중", "비만 1단계", "비만 2단계", "비만 3단계"];
    List<double> ranges1 = [18.4, 18.5, 23.0, 25.0, 30.0, 35];
    List<double> ranges2 = [0, 22.9, 24.9, 29.9, 34.9, 100];

    for(int i=(ranges1.length-1);i>=0;i--){

      "${((bmiIndex >= ranges1[i]) && (bmiIndex <= ranges2[i])) ? "${result = levels[i]}" : ""}";
      
    }

    return result;
  }  

}