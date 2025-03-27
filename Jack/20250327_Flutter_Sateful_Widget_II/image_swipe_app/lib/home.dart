import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property

  late List<String> imageName;
  late int currentImage; // [currentImage]

  @override
  void initState() {
    super.initState();
    imageName = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];

    currentImage = 0;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Swiping'),
      ),
      body: SimpleGestureDetector(
        onHorizontalSwipe: (direction) => _onHorizontalSwipe(direction), //direction이 오른쪽인지 왼쪽인지 알고 있다.
        onVerticalSwipe: (direction) => _onVerticalSwipe(direction),
        onDoubleTap: () => _onDoubleTap(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                imageName[currentImage],
              ),
              Image.asset(
                'images/${imageName[currentImage]}',
                width: 350,
              ),
            ],
          ),
        ),
      ),

    );
  } //build

  // --- Functios ---
  _onHorizontalSwipe(SwipeDirection direction){ // right to left 
    if(direction == SwipeDirection.left) {
      currentImage++;
      if(currentImage >= imageName.length){
        currentImage = 0;
      }

    } else { // left to right
      currentImage--;
      if(currentImage < 0){
        currentImage = imageName.length - 1;
      }

    }

    setState(() {});

  }

  _onVerticalSwipe(SwipeDirection direction){
    if(direction == SwipeDirection.up) { // down to up
      currentImage++;
      if(currentImage >= imageName.length){
        currentImage = 0;
      }
    }else { // up to down
      currentImage--;
      if(currentImage < 0){ 
        currentImage = imageName.length - 1;
      }
    }


    setState(() {});
  }

  _onDoubleTap(){
    currentImage++;
    if(currentImage >= imageName.length){
      currentImage = 0;
    }
    setState(() {});
  }


} //Class