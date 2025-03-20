// List의 최대값과 최대값 위치 구하기

// 결과
// 숫자들 중 최대값은 15이고 5번째 값 입니다.

main(){
  List<int> num = [11,12,13,14,15];
  int maxValue = num[0];
  int minValue = num[0];
  int loopCount = 0;
  int maxIndex = 0;

  for(int i in num){
    loopCount++;
    if(i > maxValue){
      maxValue = i;
      maxIndex = loopCount;
    }
  }
  print("$maxValue --> $maxIndex");

  loopCount = 0;
  int minIndex = 1; 

  for(int i in num){
    loopCount++;
    if(i < minValue){
      minValue = i;
      minIndex = loopCount;
    }
  }
    print("$minValue ---> $minIndex");

      

}