

main() {
  // 조건문 (Conditional Statement) - 판단할 때 사용, ID가 올바른지, .. 컨디셔널 또는 브랜치 스테이트먼트라고도 불림, 무조건 사용한다.
  int num1 = 5;   // 이 숫자는 나중에 무조건 바뀐다. 테스트에 사용하기 위해서 설정
  String result = "";


  if(num1 > 10){  // true일 때 Scope 내용 실행 
    result = "10 보다 큰 ";
  }else if(num1 < 10){ //if 뒤에는 반드시 ()가 와야 한다.
    result = "10 보다 작은 ";
  }else{
    result = "10과 같은 ";
  }

  print("입력된 숫자 $num1은(는) $result 수 입니다.");

  // ------------------------------------------//
  // Exercise
  // 변수에 있는 숫자 값을 비교해서
  // 숫자가 5의 배수이면 '입력된 숫자 __는 5의 배수 입니다'
  // 숫자가 5의 배수가 아니면 '입력된 숫자는 __는 5의 배수가 아니며 나머지 값은 __입니다.'

  int num2 =10;
  String result02 = "";

  if(num2 % 5 == 0){
    result02 = "입력된 숫자 $num2는 5의 배수 입니다.";
  }else {
    result02 = "입력된 숫자는 $num2는 5의 배수가 아니며 나머지 값은 ${num2%5}입니다.";
  }
  print("$result02");

// 위의 경우 result02를 사용해서 메모리를 낭비할 필요가 없이 그냥 Scope에 print()를 써주면 된다.

// Switch >> if 보다 더 빠르다. 그러나 다트에서는 많이 사용하지 않는다.
switch(num2 % 5){
  case 0:
    print("입력된 숫자 $num2는 5의 배수 입니다.");
  default: 
    print("입력된 숫자는 $num2는 5의 배수가 아니며 나머지 값은 ${num2%5}입니다.");
}

// Excercise
// num2가 2의 배수 이면 '2의 배수 입니다.'
// num2가 3의 배수 이면 '3의 배수 입니다.'
// num2가 5의 배수 이면 '5의 배수 입니다.'

if(num2%2 == 0){
  print("2의 배수 입니다.");
}if(num2%3 == 0){
  print("3의 배수 입니다.");
}if(num2%5 == 0){
  print("5의 배수 입니다.");
}

// Exercise
// 점수를 입력 받아 학점으로 표시하기
// 90점 이상 이면 : '입력하신 점수 __는 A학점 입니다.'
// 80점 이상 이면 : '입력하신 점수 __는 B학점 입니다.'
// 70점 이상 이면 : '입력하신 점수 __는 C학점 입니다.'
// 60점 이상 이면 : '입력하신 점수 __는 D학점 입니다.'
// 60점 미난 이면 : '입력하신 점수 __는 F학점 입니다.'

int score = 80;
String grade = "";

if(score > 100 || score <0){
  print('Data를 확인하세요.');
}else{
if(score >= 90){
  grade = "A";
}else if(score >= 80){
  grade = "B";
}else if(score >= 70){
  grade = "C";
}else if(score >= 60){
  result = "D";
}else{
  grade = "F";
}
}


print("입력하신 점수 $score는 $grade학점 입니다.");

// Switch문으로 해보기
if(score > 100 || score <0){
  print('Data를 확인하세요.');
  return;
}else{
  switch(score ~/ 10){
    case 10:
      grade = "A";
    case 9:
      grade = "A";
    case 8:
      grade = "B";
    case 7:
      grade = "C";
    case 6:
      grade = "D";
    default:
      grade = "F";
  }
}

print("입력하신 점수 $score는 $grade학점 입니다.");


// 삼항 연산자 **** 중요 **** 데이터 스크롤 시 색깔을 구분해서 쓸 때 나머지 값으로 구분해서 사용함 - 디자인에서 조건문을 사용할 수 있다. 
bool isPublic = true;
var vis = isPublic ? "True" : "False"; // isPublic이 true냐? true이면 True를 vis에 넣고 false이면 vis에 False를 넣는다.
print(vis);





}