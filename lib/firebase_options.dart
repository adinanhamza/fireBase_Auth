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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBIwM3Ki1DJkFILGnIyRSZB5B5NNJF0CAI',
    appId: '1:600721244450:web:fed315ba94c98e224ee57b',
    messagingSenderId: '600721244450',
    projectId: 'authstudent-abb1f',
    authDomain: 'authstudent-abb1f.firebaseapp.com',
    storageBucket: 'authstudent-abb1f.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAcVYw8RpdvL5AOlpSQbWZZbcdBgvbFt4',
    appId: '1:600721244450:android:d2edf364616adaf64ee57b',
    messagingSenderId: '600721244450',
    projectId: 'authstudent-abb1f',
    storageBucket: 'authstudent-abb1f.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBIwM3Ki1DJkFILGnIyRSZB5B5NNJF0CAI',
    appId: '1:600721244450:web:40b48305a4928c364ee57b',
    messagingSenderId: '600721244450',
    projectId: 'authstudent-abb1f',
    authDomain: 'authstudent-abb1f.firebaseapp.com',
    storageBucket: 'authstudent-abb1f.firebasestorage.app',
  );
}
