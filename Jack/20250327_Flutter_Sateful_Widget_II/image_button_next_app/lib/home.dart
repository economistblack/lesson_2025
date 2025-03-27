import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late final List<String> imageFiles;
  late int currentPage;
  late int nextPage;

  @override
  void initState() {
    super.initState();
    imageFiles = [ //// final 또는 const로 정의하면 사용자가 변경할 수 없다. 여기서는 리스트 확정
      'flower_01.png',
    'flower_02.png',
    'flower_03.png',
    'flower_04.png',
    'flower_05.png',
    'flower_06.png',
    ];
    currentPage = 0;
    nextPage =1;
  }

  @override
  Widget build(BuildContext context) { // build는 그림을 그린다.
    final Size screenSize = MediaQuery.of(context).size; 
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('무한 이미지 반복'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  imageFiles[currentPage],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(' : '),
                Text(
                  imageFiles[nextPage],
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          Stack( // 중복으로 쌓다.
            children: [
              Container( // 테두리 처리가 가능하다.
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 10,
                  )
                ),
                child: Image.asset(
                  'images/${imageFiles[currentPage]}',
                  fit: BoxFit.fill, // 꽉 채운다.
                  width: 400,
                  height: 600,
                ),
              ),
              Positioned( // 이동이 가능하다.
                left: screenWidth - 140,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.amber,
                      width: 5,
                    )
                  ),
                  child: Image.asset(
                    'images/${imageFiles[nextPage]}',
                    fit: BoxFit.fill,
                    width: 100,
                    height: 150,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  prevButton();
                }, 
                child: Text('<< 이전'),
                ),
              ElevatedButton(
                onPressed: () {
                  nextButton(screenWidth, screenHeight);
                }, 
                child: Text('다음 >>'),
                ),
            ],
          )
          ],
        ),
      ),
    );
  } // build

  // --- Functions ---

  prevButton(){
    currentPage --;
    if(currentPage < 0){
      currentPage = imageFiles.length -1;
    }

    nextPage --;
    if(nextPage < 0){
      nextPage = imageFiles.length -1;
    }
    setState(() {});
  }
  
  nextButton(double screenWidth, double screenHeight){
    currentPage++;
    if(currentPage >= imageFiles.length){
      currentPage = 0;
    }

    nextPage++;
    if(nextPage >= imageFiles.length){
      nextPage = 0;
    }

  print('스크린 가로 : 스크린 세로 => $screenWidth, $screenHeight');

  setState(() {});

  }

} // Class