// BMI 계산하기
// 신장이 170cm이고 몸무게가 70kg인 경우의 BMI 계산하기





main(){
  double height = 170;
  double weight = 70;

  double bmi = weight/((height/100)*(height/100));

  print(bmi);




  if(bmi >= 30) {
    print("고도비만");
  } else if(bmi >= 25) {
    print("비만");
  } else if(bmi >=23) {
    print("과체중");
  } else if(bmi >= 18.5) {
    print("정상체중");
  } else {
    print("저체중");
  }

  



}