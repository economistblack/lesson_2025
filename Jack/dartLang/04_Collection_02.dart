main(){
  // Map : Key와 Value로 이루어진 Collection Python에서는 딕셔너리이다.
  Map fruits = {
    'apple':'사과', 
    'grape':'포도',
    'watermelon':'수박',
  };
  // 딕셔너리와 리스트가 섞여있으면 제이슨이다.
  
  //원하는 정보 검색하기
  print(fruits['apple']);

  // 수정하기
  fruits['watermelon'] = '시원한 수박';
  print(fruits);

  // 데이터 추가하기
  fruits['banana'] = '바나나';
  print(fruits);

  // Map 새로운 구성
  Map carMakers = {};
  carMakers['aaa'] = "AAA";
  carMakers.addAll({'hyundai':'현대자동차', 'kia':'기아자동차'});
  print(carMakers);

  // Map의 key만 따로 출력하기
  print(carMakers.keys.toString()); // Tuple : 읽기 전용
  print(carMakers.keys.toList());  // List : 수정 가능
  print(carMakers.values.toList()); // List : 수정 가능

  var carMakersNames = carMakers.keys.toString();

  // Generic 선언
  Map<String, int> fruitsPrice = {
    'apple' : 1000,
    'grape' : 2000,
    'watermelon' : 3000
  };
  print(fruitsPrice['apple']);
  int applePrice = fruitsPrice['apple']!; // !는 강제 Unwrapping 이다.
  print("사과의 가격은 $applePrice 입니다.");

}