// List를 이용한 히스토그램 표시하기
// 입력 숫자 :[34,32,55,57,59,53,90,88,88,12]

// 결과
/*
    90: #
    80: ##
    70:
    60:
    50: ####
    40:
    30: ##
    20:
    10: #
    0:
*/
main() {
  List<int> score = [34, 32, 55, 57, 59, 53, 90, 88, 88, 12];
  var histo = List<int>.filled(10, 0);
  // [0,0,0,1,0,0,0,0,0,0]
  for (int i = 0; i < score.length; i++) {
    histo[score[i] ~/ 10]++;
  }
  print(histo);

  for (int i = (score.length - 1); i >= 0; i--) {
  String scoreLength = "";
  for (int j = 1; j <= histo[i]; j++) {
    scoreLength += "#";
  }
  print("${i * 10} : $scoreLength");
}
}


  /*
  String c = "#"
  for(int i = histo.length-1; i>=0; i--){
      if(histo[i]==0){
        print("${i}0  :   ")
      }else{
        print("${i}0  : ${c*histo[i]}")
      }
  }
*/
