main(){
  int num1 = 10;
  int num2 =4;


  // 덧셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : "덧셈 결과는 14입니다." //문자

  print(calcFunction(num1, num2, "add")); //파라미터 cf. 하이퍼파라미터 (머신러닝에서 사용)

  // 뺄셈 계산을 Function으로 작업하여 출력
  // 출력 내용: "10 - 4 = 6" //문자

  print(calcFunction(num1, num2, "sub"));

  // 곱셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 40 //정수

  print(calcFunction(num1, num2, "mul"));
  // 나눗셈 계산을 Function으로 작업하여 출력
  // 출력 내용 : 2.5 //실수
  
  print(calcFunction(num1, num2, "div"));   //파라미터와 아규먼트 순서가 중요하다.

} //main

calcFunction(int num1, int num2, String part){         //아규먼트 
  // if(part == "add"){
  //   return("덧셈 결과는 ${num1+num2} 입니다.");
  // } if(part == "sub"){
  //   return("$num1 - $num2 = ${num1 - num2}");
  // } if(part == "mul"){
  //   return(num1*num2);
  // } if(part == "div"){
  //   return(num1/num2);
  // }




  List cals = ["덧셈 결과는 ${num1+num2} 입니다.", "$num1 - $num2 = ${num1-num2}", (num1*num2), (num1/num2)];
  List<String> types = ["add", "sub", "mul", "div"];

  // for(int i = 0; i < cals.length; i++){
  //   if(part == types[i]) {
  //     return cals[i];
  //   }

  // }

  
  int i = 0;
  for(String type in types){
    
    if(type == part){

      return cals[i];
    }
    i++; // i = i + 1;

  }

  




}

