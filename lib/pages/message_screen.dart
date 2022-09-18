import 'package:flutter/material.dart';


class Messagescreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
      ),
      body:  Center(child: Text('hola mensaje', style:  TextStyle( 
          fontSize:  20 ,
          fontWeight: FontWeight.bold ),)),
    );
  }
}