import 'package:firebase_core/firebase_core.dart';
import 'package:fusionxcar/Splash_Screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase.initializeApp();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDK7Bmadx-4wbHAR9sod2iffTzaU9CPm7s",
        // authDomain: "YOUR_AUTH_DOMAIN",
        projectId: "fusion-x-car-wash",
        storageBucket: "YOUR_STORAGE_BUCKET",
        messagingSenderId: "fusion-x-car-wash.appspot.com",
        appId: "1:933376500398:android:bb3f0f4513b5a0e8cf833f",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(
  //     DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => const MyApp(),
  // )
      const MyApp()
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Car Wash',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
