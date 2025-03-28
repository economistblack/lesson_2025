import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool statusOnOFF;
  late String imageName;

  @override
  void initState() {
    super.initState();
    statusOnOFF = true; // 켜짐으로 시작
    imageName = 'lamp_on.png';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert를 이용한 메시지 출력'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/$imageName',
              width: 400,
              height: 450,
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    statusOnOFF = true;
                    _showDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    minimumSize: Size(100, 40)
                  ), 
                  child: Text('켜기'),
                  ),
                SizedBox(
                  width: 40,
                ),
                  
                ElevatedButton(
                  onPressed: () {
                    statusOnOFF = false;
                    _showDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    ),
                    minimumSize: Size(100, 40)
                  ), 
                  child: Text('끄기'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  } // build

  _showDialog(BuildContext context){

    if (statusOnOFF == true && imageName == 'lamp_on.png'){
      normalOption('켜진');
    } if (statusOnOFF == false && imageName == 'lamp_on.png'){
      alertOption('lamp_off.png', '끄기', '끄시');
    } if (statusOnOFF == true && imageName == 'lamp_off.png'){
      alertOption('lamp_on.png', '켜기', '켜시');
    } if (statusOnOFF == false && imageName == 'lamp_off.png'){
      normalOption('꺼진');
    }
    setState(() {
    });
  }


  normalOption(String status){
    showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            title: Text(
              '경고'
            ),
            content:  Text('현재 램프가 $status 상태 입니다.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(), 
                child: Text('네 알겠습니다.'),
                ),
            ],
          );
        },
      );
  }

  alertOption(String imageName02, String status01, String status02){
    showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            title: Text(
              '램프 $status01'
            ),
            content:  Text('램프를 $status02겠습니까?'),
            actions: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      imageName = imageName02;
                      setState(() {});
                    }, 
                    child: Text('예'),
                    ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(), 
                child: Text('아니오'),
                ),
                ],
              ),
            ],
          );
        },
      );
  }




} // Class