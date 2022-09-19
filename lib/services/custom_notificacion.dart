
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
//sha1: 32:88:79:71:6E:D6:51:C4:A7:14:37:EE:39:9F:01:E5:23:BE:AF:C8


class PushNotificationService {

  static FirebaseMessaging messaging= FirebaseMessaging.instance;

  static String? token ;

  static StreamController<String> _messagestreamController = new StreamController.broadcast();


  static Stream<String> get getmessageStream {
    return _messagestreamController.stream;
  }


  //handler
  static Future _backgroundHandler(RemoteMessage message )async{
    //print( 'en background handler: ${message.messageId}');
    _messagestreamController.add(message.notification?.body ?? 'not title' );
  }

  static Future _onMessageHandler(RemoteMessage message )async{
    //print( 'en mensaje handler: ${message.messageId}');
    _messagestreamController.add(message.notification?.body ?? 'not title' );

  }

  static Future _onMessageOpenApp(RemoteMessage message )async{
    //print( 'en open app handler: ${message.messageId}');
    _messagestreamController.add(message.notification?.body ?? 'not title' );

  }



  static Future initializedApp()async{
    //push notifications 
    await Firebase.initializeApp();

    token = await FirebaseMessaging.instance.getToken();

    print('token del dispositivo:  ${token}');

    //handler
    FirebaseMessaging.onBackgroundMessage( _backgroundHandler );
    FirebaseMessaging.onMessage.listen( _onMessageHandler );
    FirebaseMessaging.onMessageOpenedApp.listen( _onMessageOpenApp );


    //local notifications
  }

  static closestream (){
    _messagestreamController.close();
  }


}
