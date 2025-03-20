//입력한 한 자릿수 정수의 합 구하기
//입럭숫자 : 12345678
//결과
//Sum of 12345678 = 36
//Coding Test : 백준 , Programmers
main() {
  int inputValue = 12345678;//123456
  int remainder = 0; // 나머지 저장
  int sum = 0; //자리 수대로 다 더할 것들

  while (inputValue != 0) {
    remainder = inputValue % 10; //7
    //          0
    sum += remainder; 
    inputValue = inputValue ~/ 10; //123456
    //           1234567
    //123456
  }
  print(sum);
}
