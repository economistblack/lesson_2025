main(){
  // var와 dynamic
  var name = "유비";
  name = "관우";
  // name = 1; 문자열에 정수를 넣어서 에러

  dynamic name1 = '장비';
  name1 = "조자룡";
  name1 = 10; // dynamic은 문자, 숫자, bool에 구분이 없다. 

  int num1 = 100;
  print (name1 + num1); // 다트만 다이나믹과 정수 타입은 계산이 잘 되지만 다른 언어는 지원하지 않는다. 그래서 사용하지 않아야 한다. 나중에 혼란이 온다.
  // 다이나믹은 메모리를 너무 많이 차지한다. 사용하지 않음. 스위프트 언어로 변경할 때 에러가 나온다. 사용하지 말아라.
  
}