import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:application/app/routes/app_pages.dart';
import './app/modules/Splash Screen/splash_screen.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(
    GetMaterialApp(
      getPages: appRoutes,
      debugShowCheckedModeBanner:false,
      home: const SplashScreen(),

    ),
  );
}
