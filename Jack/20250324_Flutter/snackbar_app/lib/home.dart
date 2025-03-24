import 'package:flutter/material.dart';
import 'package:snackbar_app/snackbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  } // build

  

} // class