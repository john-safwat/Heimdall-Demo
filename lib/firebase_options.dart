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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCJ-7DAkvDjSaN8RRwTJmvwud5lVRJB5h8',
    appId: '1:267346768365:web:9ce82133834e20129377e4',
    messagingSenderId: '267346768365',
    projectId: 'auth-demo-13871',
    authDomain: 'auth-demo-13871.firebaseapp.com',
    storageBucket: 'auth-demo-13871.appspot.com',
    measurementId: 'G-KPSKY59KHB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBD4Q98GWNJgOoHZ_QAOjkOOIfOTucH0ps',
    appId: '1:267346768365:android:90662f47a8b0932d9377e4',
    messagingSenderId: '267346768365',
    projectId: 'auth-demo-13871',
    storageBucket: 'auth-demo-13871.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4vK5_PxSWOeNfqDdpnLmHG5s_fA_V3iE',
    appId: '1:267346768365:ios:9df8714adedd94989377e4',
    messagingSenderId: '267346768365',
    projectId: 'auth-demo-13871',
    storageBucket: 'auth-demo-13871.appspot.com',
    iosBundleId: 'com.example.authdemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4vK5_PxSWOeNfqDdpnLmHG5s_fA_V3iE',
    appId: '1:267346768365:ios:8383ec9e99a3a1d19377e4',
    messagingSenderId: '267346768365',
    projectId: 'auth-demo-13871',
    storageBucket: 'auth-demo-13871.appspot.com',
    iosBundleId: 'com.example.authdemo.RunnerTests',
  );
}
