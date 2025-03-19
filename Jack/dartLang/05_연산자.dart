main(){
  // 연산자
  // 자동 증감 연산자
  int num = 0;
  num = num +1;
  num++; // 1씩 증가 위와 같은 내용
  print(num);

  num--; // num = num - 1 1씩 감소
  print(num);

  num = num + 2;
  num += 2; // num은 2씩 증가, 누적 연산자
  print(num);

  // Optional : Null Safety 
  int num1 = 10;
  // int num2 = null; 에러 
  int? num2 = null; // null이 가능한 정수 타입, 값을 받지 않을 수 있다.
  print(num2);

  num2 ??= 8;
  print(num2); // null에 값이 없으면 8이 기본 값이다.

  int? num3;
  print(num3 ??= 5);

  // int num4;
  // print(num4++); // 최신 언어에만 null safety가 존재, 에러가 바로 발생

  // 조건 연산자
  int num5 = 10;
  int num6 = 5;

  print(num5 < num6); // 앞에가 주어, 앞 기준 
  print(num5 > num6); // 앞 기준
  print(num5 >= num6); // 앞 기준
  print(num5 <= num6); // 앞 기준
  print(num5 == num6); // 앞 기준
  print(num5 != num6); // 앞 기준 

  // 논리 연산자
  bool result = 12 > 10 && 1 > 0; // true && true ==> 이것만 true
  print(result);

  bool result2 = 10 > 5 || 1 > 2; // false || false ==> false
  print(result2); 

}