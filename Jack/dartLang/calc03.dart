// Constructor를 이용한 방법
class Calc03 { //다트에서 클래스는 소괄호가 없다. ISO 규정상 클래스 구성 요소는 Property, Constructor(생성자), Method 3가지이다.
  // Property(Attribute, Field) 다 같은 용어이다.
  int _num1 = 0; // Private 나만 쓰고 공개를 하지 않겠다.
  int _num2 = 0;
  

  // Constructor(생성자)
  Calc03(int num1, int num2) // 비어있는 생성자
  : _num1 = num1,
    _num2 = num2;

  // Method
  int addition(){ 
    return _num1 + _num2;
  }

  int subtraction(){
    return _num1 - _num2;
  }

  int multiplication(){
    return _num1 * _num2;
  }

  double division(){
    return _num1 / _num2;
  }





} // Calc03