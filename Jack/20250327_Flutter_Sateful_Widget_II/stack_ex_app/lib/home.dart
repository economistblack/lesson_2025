import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final List<String> imageList;
  late int imageOrderCurrent;

  @override
  void initState() {
    super.initState();
    imageList = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];
    imageOrderCurrent = 0;
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    print('$screenWidth, $screenHeight');

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/${imageList[imageOrderCurrent]}',
            fit: BoxFit.fill,
            width: screenWidth,
            height: screenHeight,
          ),
          Positioned(
            top: screenHeight/2,
            left: 20,
            child: ElevatedButton.icon(
              onPressed: () {
                prevButton();
              }, 
              label: Icon(
                Icons.arrow_circle_left,
              ),
              ),
          ),
          Positioned(
            top: screenHeight/2,
            right: 20,
            child: ElevatedButton.icon(
              onPressed: () {
                nextButton();
              }, 
              label: Icon(
                Icons.arrow_circle_right,
              ),
              ),
          ),
          Positioned(
            top: 100,
            left: 20,
            child: Text(
              imageList[imageOrderCurrent],
              style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }// build

  prevButton(){
    imageOrderCurrent--;
    if(imageOrderCurrent < 0){
      imageOrderCurrent = imageList.length - 1;
    }
    setState(() {});
  }

  nextButton(){
    imageOrderCurrent++;
    if(imageOrderCurrent >= imageList.length){
      imageOrderCurrent = 0;
    }
    setState(() {});
  }

} // Class