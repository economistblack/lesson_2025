main() {
  List<int> num = [11, 16, 13, 14, 15];
  int min = num[0];
  int location = 0;
  int minIndex = 0;

  for (int num1 in num) {
    minIndex++;
    if (num1 <= min) {
      min = num1;
      location = minIndex;
    }
  }
  print('숫자들 중 최소값은 $min이고 $location번째 값입니다 ');
}
