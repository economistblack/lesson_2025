// 리스트와 맵이 같이 연결되어 있는게 JSON이다.
// ''' 안에는 전체가 String , 일반적으로 JSON에서는 변수를 var 로 준다. 압축 해제가 Decode
import 'dart:convert';

main(){
  var jsonString = '''
  [
    {
      "score":40
    }, 
    {
      "score":80
    }
  ]
''';


  var scores = jsonDecode(jsonString);
  print(scores);
  var firstScore = scores[0];
  print(firstScore);
  print(firstScore['score']);

  print(scores[0]['score']); // 앱개발 시 이 표현을 쓴다.
}