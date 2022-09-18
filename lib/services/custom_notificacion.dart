
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
//sha1: 32:88:79:71:6E:D6:51:C4:A7:14:37:EE:39:9F:01:E5:23:BE:AF:C8


class PushNotificationService {

  static FirebaseMessaging messaging= FirebaseMessaging.instance;

  static String? token ;



  static Future initializedApp()async{
    //push notifications 
    await Firebase.initializeApp();

    token = await FirebaseMessaging.instance.getToken();

    print('token del dispositivo:  ${token}');

    //local notifications
  }


}
