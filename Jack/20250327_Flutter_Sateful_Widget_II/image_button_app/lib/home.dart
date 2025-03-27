import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<String> imageNameList;
  late int imageOrder;

  @override
  void initState() {
    super.initState();
    imageNameList = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];
    imageOrder = 0;

  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('무한 이미지 반복'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              imageNameList[imageOrder],
            ),
            Image.asset(
              'images/${imageNameList[imageOrder]}'
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    beforeAction();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  ), 
                  child: Text('<< 이전'),
                  ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    nextAction();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  ), 
                  child: Text('다음 >>'),
                  ),
              ],
            ),
          ],
        ),
      ) 
    );
  } // build

  beforeAction(){
    imageOrder--;
    if (imageOrder < 0){
      imageOrder = imageNameList.length -1;
    }
    setState(() {});
    }
  nextAction(){
    imageOrder++;
    if (imageOrder >= imageNameList.length){
      imageOrder = 0;
    }
    setState(() {});
  }

} // Center