// Property를 이용한 방법
class Calc01 { //다트에서 클래스는 소괄호가 없다. ISO 규정상 클래스 구성 요소는 Property, Constructor(생성자), Method 3가지이다.
  // Property(Attribute, Field) 다 같은 용어이다.
  int num1 = 0;
  int num2 = 0;
  

  // Constructor(생성자)

  // Method
  int addition(){
    return num1 + num2;
  }

  int subtraction(){
    return num1 - num2;
  }

  int multiplication(){
    return num1 * num2;
  }

  double division(){
    return num1 / num2;
  }

  



} // Calc01