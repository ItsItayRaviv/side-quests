// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyApvB3vK9Uj7rCigEz84uwYzGKHxRDjpRo',
    appId: '1:1010237393727:web:cfb046c059e9f1f092618a',
    messagingSenderId: '1010237393727',
    projectId: 'ir-side-quest',
    authDomain: 'ir-side-quest.firebaseapp.com',
    storageBucket: 'ir-side-quest.firebasestorage.app',
    measurementId: 'G-5QCNB1XSX2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAyJgR-GD04UXsjJFi98oU_IRrfviN2UTg',
    appId: '1:1010237393727:android:72f24e4398aecd5592618a',
    messagingSenderId: '1010237393727',
    projectId: 'ir-side-quest',
    storageBucket: 'ir-side-quest.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApMO-YEl1fFbDuMAFS0x8H5aWyMtD_dnE',
    appId: '1:1010237393727:ios:6d0201b5895aaaae92618a',
    messagingSenderId: '1010237393727',
    projectId: 'ir-side-quest',
    storageBucket: 'ir-side-quest.firebasestorage.app',
    iosBundleId: 'com.example.sideQuests',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApMO-YEl1fFbDuMAFS0x8H5aWyMtD_dnE',
    appId: '1:1010237393727:ios:6d0201b5895aaaae92618a',
    messagingSenderId: '1010237393727',
    projectId: 'ir-side-quest',
    storageBucket: 'ir-side-quest.firebasestorage.app',
    iosBundleId: 'com.example.sideQuests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyApvB3vK9Uj7rCigEz84uwYzGKHxRDjpRo',
    appId: '1:1010237393727:web:2db467749c664d7b92618a',
    messagingSenderId: '1010237393727',
    projectId: 'ir-side-quest',
    authDomain: 'ir-side-quest.firebaseapp.com',
    storageBucket: 'ir-side-quest.firebasestorage.app',
    measurementId: 'G-MWZHDNP6PG',
  );
}
