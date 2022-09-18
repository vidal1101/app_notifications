import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test notifications'),
      ),
      body: Center(
        child: Text('home screen', 
         style:  TextStyle( 
          fontSize:  20 ,
          fontWeight: FontWeight.bold ),
         )),
    );
  }
}