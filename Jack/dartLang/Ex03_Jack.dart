// List의 최대값과 최대값 위치 구하기

// 결과
// 숫자들 중 최대값은 15이고 5번째 값 입니다.


main(){
  List<int> num = [20,30,11,12,13,14,15,50];
  int maxIndex = num[0];
  int loopCount = 0;
  int maxOrder = 0;

  for(int i in num){
    loopCount++;
    if(i > maxIndex){
      maxIndex = i;
      maxOrder = loopCount;

    }
  }
  print("$maxIndex은 최대값이고 $maxOrder번째 순서이다.");

  int minIdex = num[0];
  int minOrder = 0;
  loopCount = 0;

  for(int i in num){
    loopCount++;
    if(i < minIdex){
      minIdex = i;
      minOrder = loopCount;
    }
  }
  print("$minIdex는 최소값이고 $minOrder번째 순서이다.");


}