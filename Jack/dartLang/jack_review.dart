
main(){
  List<int> numbers = [3, 8, 12, 7, 15, 24, 6];

  // 짝수만 필터링하여 새로운 리스트 생성
  List<int> evenNumbers = numbers.where((num) => num % 2 == 0).toList();

  print(evenNumbers); // 출력: [8, 12, 24, 6]
}