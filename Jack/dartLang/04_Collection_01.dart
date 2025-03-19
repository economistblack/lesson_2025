main(){
  // List collection
  List threekingdoms = [];

  // List에 데이터 추가하기
  threekingdoms.add("위");
  threekingdoms.add("촉");
  threekingdoms.add("오");
  threekingdoms.add("We");


  print(threekingdoms);
  
  // 원하는 데이터만 출력하기
  // 위 만 출력하기
  print(threekingdoms[0]);

  //CRUD (Create, Read, Update, Delete)

  // 수정 : 위 <- We

  threekingdoms[0] = "We";
  print(threekingdoms);

  // List의 삭제
  // Index 번호로 삭제
  threekingdoms.removeAt(1);
  print(threekingdoms);

  // 데이터값으로 삭제
  threekingdoms.remove('We'); // 중복된 경우 하나만 삭제한다. removeAt()을 가장 많이 사용한다.
  print(threekingdoms);

  // 데이터 갯수 파악
  print(threekingdoms.length);
  
  // 숫자 등록하기
  threekingdoms.add(1); // 이경우 숫자인지 문자인지 구분을 하지 못한다. If > For > Function > Class > Model : MVVM (Model-View-ViewModel)
  print(threekingdoms); 

  // ---------
  // List의 정해진 변수 타입 (Generic)의 데이터만 추가하기 *** 중요 ***
  // ---------
  List<String> threekingdoms2 = [];
  threekingdoms2.add('We');
  // threekingdoms2.add(1); // 에러
  List<int> threekingdoms3 = [];
  threekingdoms3.add(1);
  // threekingdoms3.add('We'); // 에러 int Generic이기 때문에 String이 들어가지 않는다.

  // List 선언시 초기값 설정
  List<String> threekingdoms4 = ['위', '촉', '오'];
  // 위나라가 삼국을 통일 했습니다.
  print("${threekingdoms4[0]}나라가 삼국을 통일 했습니다.");

  
}