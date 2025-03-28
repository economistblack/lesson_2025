// main에서 지정한 숫자를 가지고 구구단을 출력하는 클래스를 생성
// 단, 클래스와 데이터 전달 방법은 생성자를 이용한다.
// 출력시 곱해지는 수중 홀수는 *로 표시한다.

// 결과
/*
**** 4단 ****
4 X * = 4
4 X 2 = 8
4 X * = 12
*/

main(){
  Gugudan gugudan = Gugudan(4);
  gugudan.gugudanPrint();
}

class Gugudan {
  // Property
  late int dan;
  // Constructor
  Gugudan(int dan) 
  : this.dan = dan; // this.dan은 Property에 있는 dan이다.

  gugudanPrint(){
    print("**** $dan ****");
    for(int i=1; i<=9; i++){
      
     
      print("$dan X ${(i % 2 == 0) ? "$i" : "*"}  = ${dan*i}"); // 차트 그릴 때 많이 쓰인다.
      
    }
  }


}