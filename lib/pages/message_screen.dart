import 'package:flutter/material.dart';


class Messagescreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mensaje'),
      ),
      body:  Center(child: Text('hola mensaje')),
    );
  }
}