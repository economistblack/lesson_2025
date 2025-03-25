
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String buttonText;
  late Color buttonColor;
  late double imageWidth;
  late double imageHeight;
  late String profileImagePath;
  late Color profileColor;
  late int clickCount;

  @override
  void initState() {
    buttonText = "Hello";
    buttonColor = Colors.blue;
    imageWidth = 200;
    imageHeight = 50;
    profileImagePath = 'images/eb.png';
    profileColor = Colors.blue;
    clickCount = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change button color & text'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
        toolbarHeight: 100,
        actions: [
          IconButton(
            onPressed: () {
              //
            }, 
            icon: Icon(Icons.wine_bar_rounded)),
          IconButton(
            onPressed: () {
              //
            }, 
            icon: Icon(Icons.wine_bar_outlined)),
          
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () => _showDialog(context),
                  child: Image.asset(
                    'images/pikachu-1.png',
                    width: imageWidth,
                  ),
                ),
                SizedBox(
                  height: imageHeight,
                ),
                ElevatedButton(
                  onPressed: () => _onClick(), 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    foregroundColor: Colors.white,
                    minimumSize: Size(150, 40),
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(buttonText), 
                  ),
                  Text('$clickCount'),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _profileImageChange();
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        profileImagePath
                      ),
                      radius: 30,
                    ),
                  ),
                ],
              ),
              accountName: Text('Economist Black'), 
              accountEmail: Text('jack@economistblak.org'),
              decoration: BoxDecoration(
                color: profileColor, 
              ),
              
              ),
              
            ListTile(
              leading: Icon(
                Icons.home
              ),
              title: Text('economistblack.org'),
            ),
          ],
        ),
      ),
    );
  } // build

  _onClick(){
    clickCount++;
    (buttonText == 'Hello' && clickCount >= 5) ? 
    (buttonText = 'Flutter', buttonColor = Colors.amber, imageWidth = 250, imageHeight = 70, clickCount = 0) 
    : (buttonText == 'Flutter' && clickCount >=5) ? 
    (buttonText = 'Hello', buttonColor = Colors.blue, imageWidth = 200, imageHeight = 50, clickCount =0)
    : ();
    setState(() {});
  }


_profileImageChange(){
   (profileImagePath == 'images/eb.png') ? 
   (profileImagePath = 'images/pikachu-3.png', profileColor = Colors.amber) : 
   (profileImagePath = 'images/eb.png', profileColor = Colors.blue);
   setState(() {});
}

_showDialog(BuildContext context){
  showDialog(
    context: context, 
    barrierDismissible: false,
    builder: (context){
      return AlertDialog(
        title: Text('이미지 크기'),
        content: Text('버튼을 5번 클릭하면\n이미지가 변경됩니다.'),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(), 
                child: Text('종료'),
                ),
            ],
            ),
        ],
      );
    },
    );
}

} // Class