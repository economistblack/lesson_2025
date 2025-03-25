// 클라스에서 만드는 Fuction은 Method이다.
// Fuction은 그냥 Fuction이다.

main(){
  List<int> list1 = [1,3,5,7,9];
  List<int> list2 = [10, 30, 50, 70, 90];

  // 동일한 기능의 코드인데 중복되어 코딩함.
  // addList(list1);
  // addList(list2);

  int sum1 = addList(list1);
  int sum2 = addList(list2);

  print("리스트의 합계는 $sum1 입니다.");
  print("리스트의 합계는 $sum2 입니다.");


} // main


int addList(List<int> list11){  // 함수에서 반드시 타입을 정의해야 한다. dynamic으로 뜨면 메모리 용량 차지가 어마어마해서 앱등록이 안된다. 변수의 이름은 상관이 없다.함수의 타입을 지정해야 한다.
  int sum = 0;
  for(int li in list11){
    sum+=li;
  }
  return (sum);  
}