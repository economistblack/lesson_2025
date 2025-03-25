import 'package:flutter/material.dart';

class Mail extends StatelessWidget {
  const Mail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            //
          }, 
          icon: Icon(Icons.menu),
          ),
        title: Text('Navigator_AppBar'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      actions: [
        IconButton(
          onPressed: () => mailFunction(context, '/sendmail'), 
          icon: Icon(Icons.email)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => sendFunction(context),
            child: Icon(
              Icons.email,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => receiveFunction(context),
            child: Icon(
              Icons.email_outlined,
            ),
          ),
        ),
      ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => sendFunction(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              ),
              child: Text('보낸 편지함'),
              ),
            ElevatedButton(
              onPressed: () => receiveFunction(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              ), 
              child: Text('받은 편지함')),
          ],
        ),
      ),
    );
  } // build

  // --- Functions ---
  sendFunction(BuildContext context){
    Navigator.pushNamed(context, '/sendmail');
  }

  receiveFunction(BuildContext context){
    Navigator.pushNamed(context, '/receivedmail');
  }

  mailFunction(BuildContext context, String part){
    if(part == '/sendmail'){
       Navigator.pushNamed(context, '/sendmail');
    }else{
      Navigator.pushNamed(context, '/receivedmail');
  }


} // Mail
}