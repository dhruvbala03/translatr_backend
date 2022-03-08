// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
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
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAFMW-fdrCqPdHLBjrdXwbdyVLgKEDis-A',
    appId: '1:672269129374:web:f7cad8706a1d07a3370d8f',
    messagingSenderId: '672269129374',
    projectId: 'translatr-backend',
    authDomain: 'translatr-backend.firebaseapp.com',
    storageBucket: 'translatr-backend.appspot.com',
    measurementId: 'G-FFVVPQMKDE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCuzTc2gGXiMWFwRombGJCZsPkrLSn2U6w',
    appId: '1:672269129374:android:6c93854f94c156cc370d8f',
    messagingSenderId: '672269129374',
    projectId: 'translatr-backend',
    storageBucket: 'translatr-backend.appspot.com',
  );
}