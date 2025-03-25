import 'package:flutter/material.dart';

class Mail extends StatelessWidget {
  const Mail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mail'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => sendFunction(context),
            icon: Icon(Icons.mail),
          ),
          IconButton(
            onPressed: () => receiveFunction(context),
            icon: Icon(Icons.mail_outlined),
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
                shape: ContinuousRectangleBorder(
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
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text('받은 편지함'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/pikachu-1.png'),
              ),
              accountName: Text('Pikachu'),
              accountEmail: Text('pikachu@gmail.com'),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
            ),
            ListTile(
              onTap: () => sendFunction(context),
              leading: Icon(Icons.mail),
              title: Text('보낸 편지함'),
              iconColor: Colors.blue,
            ),
            ListTile(
              onTap: () => receiveFunction(context),
              leading: Icon(Icons.mail_outlined),
              title: Text('받은 편지함'),
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  } // build

  sendFunction(BuildContext context) {
    Navigator.pushNamed(context, '/sendmail');
  }

  receiveFunction(BuildContext context) {
    Navigator.pushNamed(context, '/receivedmail');
  }
} // Class
