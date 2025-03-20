// 입력한 한 자릿수 정수의 합 구하기
// 입력숫자 : 12345678
// 결과
// Sum of 12345678 =36
// Coding Test: 백준, Programmers

main(){
  int inputValue = 12345678;
  int originalNum = inputValue;
  int remainder = 0;
  int sum = 0;

  while(inputValue != 0){
    remainder = inputValue % 10;
    print(remainder);
    sum += remainder;
    print(sum);
    inputValue = inputValue ~/ 10;
    print(inputValue);
  }

  print("Sum of $originalNum = $sum");
  
}


