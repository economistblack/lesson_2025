main(){
  // for문
  // 1부터 10까지 출력해보기
  // int i = 10 // 전역변수

  for(int i=1;i<=10;i++){ // 시작;범위;증가치
    print(i);
  }

  // 1부터 10까지 합 구하기

  int sum = 0;
  int startNum = 1;
  int endNum = 100;

  for(int i=startNum;i<=endNum;i++){ // 변수 int i는 for문의 스코프에서만 사용 가능한 i이다. -> 지역변수라고 한다. sum = sum + i
     sum += i; // sum = sum + i
  }
  print('$startNum부터 $endNum까지의 합계는 $sum 입니다.');

  // Exercise
  // 1부터 10까지 수중 짝수의 합과 홀수의 합 구하기 (단, for 문은 1개만 사용, 수의 범위는 변경 가능 하다.)
  // 출력 예시: 1부터 10까지의 수중 짝수의 합은 __이고 홀수의 합은  __ 입니다.

  int evenSum = 0;
  int oddSum = 0;

  for(int i=startNum;i<=endNum;i++){
    if (i%2 == 0){
      evenSum += i;
    }else{
      oddSum += i;
    }
  }
  print("$startNum부터 $endNum까지의 수중 짝수의 합은 $evenSum이고 홀수의 합은 $oddSum입니다.");

  // List를 반복문에 사용하기
  List<int> numList = [1,3,5,7,9];
  int sumList = 0;
  for(int i=0; i < numList.length; i++){
    sumList += numList[i];
  }
  print(sumList);

  sumList = 0;
  for(int num in numList){ //numList에 Index가 들어옴
    sumList += num;
  }
  print(sumList);

  // while
  int sumNum = 0;
  int number = 1;
  while(number <= 10){
    sumNum += number;
    number++;
  }
  print(sumNum);

  // for는 데이터가 정해진 경우에 사용 while은 데이터 범위가 정해져 있지 않을 때 ~ 
  // 키오스크에서는 While을 사용, 방문하는 손님 수를 알 수가 없음.
  // 버거킹에서 키오스크에서 특정 이미지를 15번 누르면 While문에서 빠져나감.

  while(number <= 100){
    if(number > 10){
      break; // 효력은 while 문에 적용
    }
    number++;
  }

  for(int i=1; i<=100; i++){
    if(i==5){
      break;
    }
    print(i);
  }
  
  for(int i=1; i<=10; i++){
    if(i==5){
      continue; // 5가 없어짐 즉, 5에서 print까지 가지 않고 다시 for문으로 가서 5가 빠진다.
    }
    print(i);
  }

  


}