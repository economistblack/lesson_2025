// Factorial 구하기
// 4! = 4 * 3 * 2 * 1
// 결과
// 4's factorial value = 24


main(){
  int inputValue = 4;
  int result = 1;

  for(int i=inputValue; i > 0; i--){
    result *= i;
  }
  print(result);

}
// 1* 2*