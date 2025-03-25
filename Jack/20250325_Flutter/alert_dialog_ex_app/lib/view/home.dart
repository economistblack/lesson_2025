import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert and push'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => _showDialog(context),
          child: Text(
            'Move the 2nd page'
            ),
            ),
      ),
    );
  } // build


_showDialog(BuildContext context){
  showDialog(
    context: context, 
    barrierDismissible: false,
    builder: (context){
      return AlertDialog(
        title: Text('Page 이동'),
        content: Text('아래의 버튼을 누르면 페이지 \n이동을 합니다.'),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () => Navigator.of(context).pop(),

                child: Text('종료'),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {
                  Navigator.of(context).pop(); // 해당 메모리 (of(context))에서 지우고 가야 2nd 페이지에서 돌아올 때 Alert이 사라진다.
                  Navigator.pushNamed(context, '/secondpage');
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ),
                  child: Text('Page 이동'),
                  ),
              ),
            ],
          ),
        ],
      );
    },
    );

}


} // Class