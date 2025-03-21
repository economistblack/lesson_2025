// 1부터 10까지의 합을 구하고 그 합이 홀수 인지 짝수 인지 출력
// 단, 클래스 1개 생성하고 클래스 Method를 2개(합계, 홀짝수 판단)
// 숫자의 범위는 main에서 선정한다.
// 클래스와의 데이터 연계 방법은 생성자를 사용한다.

// 결과
/*
  1부터 10까지의 합은 55 입니다.
  1부터 10까지의 합의 수는 홀수 입니다.
*/

main(){
  int startNum = 10;
  int endNum = 1;

  Calc calc = Calc.check(startNum, endNum);
  int sum = calc.sumCalc();
  String result = calc.evenOdd(sum);

  print("$startNum 부터 $endNum 까지의 합은 $sum 입니다.");
  print("$startNum 부터 $endNum 까지의 합의 수는 $result 입니다.");
}

class Calc {

  late int startNum;
  late int endNum;
  


  Calc(int startNum, int endNum)
  : this.startNum = startNum,
    this.endNum = endNum;

  // factory 생성자 --> 다트에만 있음
  factory Calc.check(int startNum, int endNum){
    int startNumFactory = 0;
    int endNumFactory = 0;

    if(startNum > endNum) {
      startNumFactory = endNum;
      endNumFactory = startNum;
    } else {
      startNumFactory = startNum;
      endNumFactory = endNum;
    } 
    return Calc(startNumFactory, endNumFactory);
    
  }
  
  int sumCalc(){
    int sum = 0;
    for(int i = startNum; i <= endNum; i++){

      sum += i;
    }
      return sum;
  }


  String evenOdd(int sum1) {
    String result = "";
    if (sum1 == 0){
      result = "짝수";
    } else {
      result = "홀수";
    }
    return result;
    }
  }
  


