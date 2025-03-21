import 'calc01.dart';
import 'calc02.dart';
import 'calc03.dart';

main(){ //클라스에 있는 함수는 메소드이다.
  print("Property를 이용한 방법");

  Calc01 calc01 = Calc01(); //오른쪽 Calc01은 생성자이다. 생성자 없이는 클래스를 생성할 수 없다. 왼쪽 calc01은 객체(object, Instance)이고 여러개를 만들 수 있다. ex> String은 객체 변수이다.
  calc01.num1 = 1;
  calc01.num2 = 2;

  print("덧셈 결과 : ${calc01.addition()}"); //객체 뒤에 쓴다고 해서 메소드가 된다.
  print("뺄셈 결과 : ${calc01.subtraction()}"); //객체 뒤에 쓴다고 해서 메소드가 된다.
  print("곱셈 결과 : ${calc01.multiplication()}"); //객체 뒤에 쓴다고 해서 메소드가 된다.
  print("나눗셈 결과 : ${calc01.division()}"); //객체 뒤에 쓴다고 해서 메소드가 된다.


  print("");
  print("Method를 이용한 방법");
  Calc02 calc02 = Calc02();

  print("덧셈 결과 : ${calc02.addition(1, 2)}"); //객체 뒤에 쓴다고 해서 메소드가 된다.
  print("뺄셈 결과 : ${calc02.subtraction(1, 2)}"); //객체 뒤에 쓴다고 해서 메소드가 된다.
  print("곱셈 결과 : ${calc02.multiplication(1, 2)}"); //객체 뒤에 쓴다고 해서 메소드가 된다.
  print("나눗셈 결과 : ${calc02.division(1, 2)}");

  print("");
  print("생정자를 이용한 방법"); // 가장 많이 사용한다.
  Calc03 calc03 = Calc03(1,2);
  print("덧셈 결과 : ${calc03.addition()}"); //객체 뒤에 쓴다고 해서 메소드가 된다.
  print("뺄셈 결과 : ${calc03.subtraction()}"); //객체 뒤에 쓴다고 해서 메소드가 된다.
  print("곱셈 결과 : ${calc03.multiplication()}"); //객체 뒤에 쓴다고 해서 메소드가 된다.
  print("나눗셈 결과 : ${calc03.division()}");
  

  
} //main

