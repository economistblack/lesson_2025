main(){
  int n1 = 10;
  int n2 = 20;

  Sub sub = Sub(n1, n2);
  print(sub.addition());
  print(sub.subtration());
}


class Add {
  // Property
  late int num1; 
  late int num2; //데이터가 들어오는지 나중에 판단하겠다.



  // Constructor

  Add(int num1, int num2)
  : this.num1 = num1,
    this.num2 = num2; // this는 위의 프로퍼티 변수와 이름이 같다. this.num1은 프로퍼티에 있는 변수다. 오른쪽은 생성자에 있는 변수다.


  // Method
  int addition(){
    return num1 + num2;
  } 
}


class Sub extends Add {   // Add 클래스에서 상속 extends
  Sub(super.num1, super.num2); // super는 상속 받은 변수를 쓰겠다.
  int subtration(){
    return num1 - num2;
  }

}