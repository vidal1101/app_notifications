import 'package:app_notifications/main.dart';
import 'package:app_notifications/pages/home_page.dart';
import 'package:app_notifications/pages/message_screen.dart';
import 'package:app_notifications/services/custom_notificacion.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    PushNotificationService.getmessageStream.listen((message) { 

      print('my app: $message');
    });
  }


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