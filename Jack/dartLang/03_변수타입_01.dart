main(){
  // 변수 타입 선언자
  // 정수 선언자
  int intNum1 = 30;
  print(intNum1);

  int intNum2 = 20;
  print(intNum2);

  // 사칙연산
  print(" ** 정수 사칙 연산 ** ");
  print(intNum1 + intNum2); // 덧셈 계산
  print(intNum1 - intNum2); // 뺄셈 계산
  print(intNum1 * intNum2); // 곱셈 계산
  print(intNum1 / intNum2); // 나눗셈 계산, JAVA에서는 정수 / 정수는 정수만 나오지만 Dart에서는 실수로도 결과를 출력해 준다.
  print(intNum1 % intNum2); // 나머지 계산
  print(intNum1 ~/ intNum2); // 몫 계산

  // 실수
  double doubleNum1 = 1.5;
  double doubleNum2 = 0.2;

  print(doubleNum1 + doubleNum2);
  print(doubleNum1 - doubleNum2);
  print(doubleNum1 * doubleNum2);
  print(doubleNum1 / doubleNum2);
  // 실수는 몫과 나머지는 없지만 계산은 된다.
  print(doubleNum1 % doubleNum2); // 근접한 수를 제공하기 때문에 사용하지 않는 것이 좋다.
  print(doubleNum1 ~/ doubleNum2);
  


}