import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_builder/app/local_notification/local_notification.dart';
import 'package:mr_builder/routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final NotificationService notificationService = NotificationService();
  await notificationService.initNotification();
  try {
    await Firebase.initializeApp();

    runApp(const MyApp());
  } catch (e) {
    print('Failed to initialize Firebse: $e');
  }
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDF01t9QZWzpREUECdki_9at_p-WvzFl2s",
      appId: "1:574899095911:android:e0ad1b2c1e8f88a10287c2",
      messagingSenderId: "574899095911",
      projectId: "mr-builder-bdf92",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}
