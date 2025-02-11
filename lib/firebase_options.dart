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
    apiKey: 'AIzaSyDKI2V9ong3APp9mRQogAU1i21eMNZjM9A',
    appId: '1:49787849581:web:126955f5bd10a59c5d6864',
    messagingSenderId: '49787849581',
    projectId: 'takatuf-704ad',
    authDomain: 'takatuf-704ad.firebaseapp.com',
    storageBucket: 'takatuf-704ad.firebasestorage.app',
    measurementId: 'G-NGTPKHWWJD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBcQcezDf50miJsOfCl-mDvcgOxGN0Iz90',
    appId: '1:49787849581:android:d7789dfa3de232775d6864',
    messagingSenderId: '49787849581',
    projectId: 'takatuf-704ad',
    storageBucket: 'takatuf-704ad.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAa9p4nLiWcgHvVPwbrantvFVBryxwIVpA',
    appId: '1:49787849581:ios:71401052a01c13b85d6864',
    messagingSenderId: '49787849581',
    projectId: 'takatuf-704ad',
    storageBucket: 'takatuf-704ad.firebasestorage.app',
    iosBundleId: 'edu.iug.takatuf',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAa9p4nLiWcgHvVPwbrantvFVBryxwIVpA',
    appId: '1:49787849581:ios:2ed674ab94aea5145d6864',
    messagingSenderId: '49787849581',
    projectId: 'takatuf-704ad',
    storageBucket: 'takatuf-704ad.firebasestorage.app',
    iosBundleId: 'com.example.damageAssessmentProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDKI2V9ong3APp9mRQogAU1i21eMNZjM9A',
    appId: '1:49787849581:web:e2edf8911727573d5d6864',
    messagingSenderId: '49787849581',
    projectId: 'takatuf-704ad',
    authDomain: 'takatuf-704ad.firebaseapp.com',
    storageBucket: 'takatuf-704ad.firebasestorage.app',
    measurementId: 'G-CBXWMQG9RP',
  );

}