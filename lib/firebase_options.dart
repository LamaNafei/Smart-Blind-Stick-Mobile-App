// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBTnc_jct4uVnDLw6LCvFi7plRj9li1BMI',
    appId: '1:101665681820:android:89eb10c4d796b4b1ba5859',
    messagingSenderId: '101665681820',
    projectId: 'smart-blinds-stick-ff409',
    databaseURL: 'https://smart-blinds-stick-ff409-default-rtdb.firebaseio.com',
    storageBucket: 'smart-blinds-stick-ff409.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDaayY7OnqqAjk-JHdxo58xH6LWy96F_Lw',
    appId: '1:101665681820:ios:ad9001a09d97cc93ba5859',
    messagingSenderId: '101665681820',
    projectId: 'smart-blinds-stick-ff409',
    databaseURL: 'https://smart-blinds-stick-ff409-default-rtdb.firebaseio.com',
    storageBucket: 'smart-blinds-stick-ff409.appspot.com',
    iosClientId: '101665681820-b06jm92jm1e0s1tkr9sfqem7nhtp5imh.apps.googleusercontent.com',
    iosBundleId: 'com.example.application',
  );
}
