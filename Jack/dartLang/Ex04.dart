main(){
  List<int> score = [34, 32, 55, 57, 59, 90, 88, 87, 88, 12];
  var histo = List<int>.filled(10, 0);
  print(histo);
  print("---------------");
  


  for(int i=0; i<score.length; i++){
    histo[score[i] ~/ 10]++;
    // histo[score[i] ~/ 10] = histo[score[i] ~/ 10] + 1
    print(histo);
  }
  print(histo);

  for(int i=(histo.length -1); i>=0; i--){
    String scoreLength = "";
    for(int j = 1; j <= histo[i]; j++){
      scoreLength += "#";
      //scoreLength = scoreLenth + "#";
      print(scoreLength);
    }
    print("${i*10} : $scoreLength");
  }
}