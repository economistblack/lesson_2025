// 짝수 단이면 짝수가 별표 홀수면 홀수가 별표


main(){
  Gugudan gugudanEven = Gugudan(4);
  gugudanEven.gugudanPrint();
  print("----------");
  Gugudan gugudanOdd = Gugudan(5);
  gugudanOdd.gugudanPrint();
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
      // if (dan%2 == 0){
      //   print("$dan X ${(i % 2 == 0) ? "*" : "$i"}  = ${dan*i}"); // 차트 그릴 때 많이 쓰인다.
      // } else {
      //   print("$dan X ${(i % 2 == 0) ? "$i" : "*"}  = ${dan*i}"); // 차트 그릴 때 많이 쓰인다.
      // }
      
      print("$dan X ${(dan % 2) == (i % 2) ? "*" : "$i"} = ${dan*i}");

    }
  }


}