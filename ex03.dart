//List의 최대값과 최대값 위치 구하기
//결과
//숫자들 중 최대값은 15이고 5번째 값 입니다.

main() {
  List<int> num = [11, 12, 13, 15, 14];
  int max = num[0];
  int location = 0; // 위치에 대한 변수
  int maxIndex = 0; // 반복 할 리스트의 횟수
  for (int num1 in num) {
    maxIndex++;
    if (num1 > max) {
      max = num1;
      location = maxIndex;
    }
  }
  print("숫자들 중 최대값은 $max이고 $location번째 값입니다.");
}
