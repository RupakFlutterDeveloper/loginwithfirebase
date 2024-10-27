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
    apiKey: 'AIzaSyBILglY4M2eFh8xNEgjbIN16qaY1iQcsXA',
    appId: '1:887606321214:web:5fb84771d707dcfbdbb16f',
    messagingSenderId: '887606321214',
    projectId: 'escortservic-6dfb2',
    authDomain: 'escortservic-6dfb2.firebaseapp.com',
    storageBucket: 'escortservic-6dfb2.appspot.com',
    measurementId: 'G-3Q54MBBB0N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDjWWVa8TnLCTB2ugVe-UKlx1YIVFEF4SQ',
    appId: '1:887606321214:android:071253ec0f670f53dbb16f',
    messagingSenderId: '887606321214',
    projectId: 'escortservic-6dfb2',
    storageBucket: 'escortservic-6dfb2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbMNm8cR2L6_G3mUrD9PZ1ceBSo8HLlXY',
    appId: '1:887606321214:ios:aa93cfc998424f08dbb16f',
    messagingSenderId: '887606321214',
    projectId: 'escortservic-6dfb2',
    storageBucket: 'escortservic-6dfb2.appspot.com',
    iosBundleId: 'com.example.escortservic',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDbMNm8cR2L6_G3mUrD9PZ1ceBSo8HLlXY',
    appId: '1:887606321214:ios:aa93cfc998424f08dbb16f',
    messagingSenderId: '887606321214',
    projectId: 'escortservic-6dfb2',
    storageBucket: 'escortservic-6dfb2.appspot.com',
    iosBundleId: 'com.example.escortservic',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBILglY4M2eFh8xNEgjbIN16qaY1iQcsXA',
    appId: '1:887606321214:web:542bb04c1d822ad5dbb16f',
    messagingSenderId: '887606321214',
    projectId: 'escortservic-6dfb2',
    authDomain: 'escortservic-6dfb2.firebaseapp.com',
    storageBucket: 'escortservic-6dfb2.appspot.com',
    measurementId: 'G-GQBFR51ZZ3',
  );
}