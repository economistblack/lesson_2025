main() {
  // 조건문 (Conditional Statement)
  int num1 = 5;
  String result = '';

  if (num1 > 10) {
    print("입력된 숫자 $num1은 10보다 큰 수 입니다.");
  } else if (num1 < 10) {
    print('입력된 숫자$num1은 10보다 작은 수 입니다');
  } else {
    print("입력된 숫자 $num1은 10과 같은 수 입니다");
  } // 여기까지가 케이스 3개일 때 책에서 가르쳐 주는 내용

  if (num1 > 10) {
    result = '10보다 큰';
  } else if (num1 < 10) {
    result = '10보다 작은';
  } else {
    result = '10과 같은';
  }
  print("입력된 숫자 $num1은 $result 수 입니다");
  //변수 하나만 넣어주면 수정 프로세스가 간단해진다.

  //-------------------------------//
  // Exercise
  // 변수에 있는 숫자 값을 비교해서
  // 숫자가 5의 배수이면 '입력 된 숫자 __는 5의 배수 입니다'
  // 숫자가 5의 배수가 아니면 '입력된 숫자 __는 5의 배수가 아니며 나머지 값은 __입니다.'

  int num2 = 10;

  if (num2 % 5 == 0) {
    print('입력된 숫자 $num2는 5의 배수입니다');
  } else {
    print('입력된 숫자 $num2는 5의 배수가 아니며 나머지 값은 ${num2 % 5}입니다');
  }

  // Switch -- if보다 퍼포먼스가 훨씬 좋다
  switch (num2 % 5) {
    case 0: //case 뒤에 숫자가 들어갈지 변수가 들어갈지 true가 들어올지는 변수에 따라 다르다
      print('입력된 숫자 $num2는 5의 배수입니다');
    default:
      print('입력된 숫자 $num2는 5의 배수가 아니며 나머지 값은 ${num2 % 5}입니다');
  }
  //Exercise
  //num2가 2의 배수이면 '2의 배수 입니다.'
  //num2가 3의 배수이면 '3의 배수 입니다.'
  //num2가 5의 배수이면 '5의 배수 입니다.'

  if (num2 % 2 == 0) {
    print("$num2가 2의 배수 이면 '2의 배수 입니다.'");
  }
  if (num2 % 3 == 0) {
    print("$num2가 3의 배수 이면 '3의 배수 입니다.'");
  }
  if (num2 % 5 == 0) {
    print("$num2가 5의 배수 이면 '5의 배수 입니다.'");
  }
  //Exercise
  //점수를 입력 받아 학점으로 표시하기
  //90점 이상이면 : '입력하신 점수 __는 A학점 입니다.'
  //80점 이상이면 : '입력하신 점수 __는 B학점 입니다.'
  //70점 이상이면 : '입력하신 점수 __는 C학점 입니다.'
  //60점 이상이면 : '입력하신 점수 __는 D학점 입니다.'
  //60점 미만이면 : '입력하신 점수 __는 F학점 입니다.'
  //- hint 변수 값에 100이상이나 마이너스 점수가 들어가는 걸 체크하는 것도 추가해봐라
  int score1 = 100;
  String score_result = '';
  String grade = "입력하신 점수 $score1는 $score_result학점 입니다.";
  if (score1 > 100 || score1 < 0) {
    print('점수를 확인하세요');
  } else {
    if (score1 >= 90) {
      score_result = 'A';
    } else if (score1 >= 80) {
      score_result = 'B';
    } else if (score1 >= 70) {
      score_result = 'C';
    } else if (score1 >= 60) {
      score_result = 'D';
    } else {
      score_result = 'F';
    }

    print("입력하신 점수 $score1는 $score_result학점입니다");
  }

  //Switch 문으로 작성하기 -- hint 케이스를 나눈 몫으로 한번 확인해봐라

  if (score1 > 100 || score1 < 0) {
    print('점수를 확인하세요');
  } else {
    switch (score1 ~/ 10) {
      case 10:
      case 9:
        score_result = 'A';
        print(grade);
      case 8:
        score_result = 'B';
        print(grade);
      case 7:
        score_result = 'C';
        print(grade);
      case 6:
        score_result = 'D';
        print(grade);
      default:
        score_result = 'F';
        print(grade);
    }
  }
  // 삼항 연산자 디자인 단계에 조건을 줄려고 할때 사용 가능함 -Scaffold에 사용 가능함 
  bool isPublic = false;
  var vis = isPublic ? "True" : "False";
  print(vis);
  
}
