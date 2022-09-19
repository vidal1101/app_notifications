import 'package:flutter/material.dart';


class Messagescreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    
    final args = ModalRoute.of(context)?.settings.arguments ?? 'not data';

    return Scaffold(
      appBar: AppBar(
        title: Text('Mensaje de la notificacion'),
      ),
      body:  Center(child: Text('$args', style:  TextStyle( 
          fontSize:  20 ,
          fontWeight: FontWeight.bold ),)),
    );
  }
}