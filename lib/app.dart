import 'package:app_notifications/main.dart';
import 'package:app_notifications/pages/home_page.dart';
import 'package:app_notifications/pages/message_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        'home'      : (context) => HomePage(),
        'mensaje'   :(context) => Messagescreen(), 

      },
    );
  }
}