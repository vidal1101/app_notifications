import 'package:app_notifications/services/custom_notificacion.dart';
import 'package:flutter/material.dart';
import 'package:app_notifications/app.dart';

void main()async {

  
  WidgetsFlutterBinding.ensureInitialized();
  
  await PushNotificationService.initializedApp();

  runApp(MyApp());
}


