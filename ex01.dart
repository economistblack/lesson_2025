//Factorial 구하기
//4! = 4*3*2*1
//결과
// 4's factorial value = 24
main() {
  int inputvalue = 4; // 단 데이터는 변경가능
  int result = 1;
  for (int i = 1; i <= inputvalue; i = i + 1) {
    result =result * i; 
  }
    print(result);
}
