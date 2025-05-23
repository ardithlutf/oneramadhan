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
    apiKey: 'AIzaSyCM8Qyxynm3EnDWksoN1Tm66h0yo3OHbTQ',
    appId: '1:233530265468:web:4ff2a7b398ca662c7ddef9',
    messagingSenderId: '233530265468',
    projectId: 'one-ramadhan-ef6ea',
    authDomain: 'one-ramadhan-ef6ea.firebaseapp.com',
    storageBucket: 'one-ramadhan-ef6ea.appspot.com',
    measurementId: 'G-DQWGWFD2E1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD--xWh_NLl-LYUPkc_Z2WKkD7wcZB2p24',
    appId: '1:233530265468:android:351b4ae1192564f27ddef9',
    messagingSenderId: '233530265468',
    projectId: 'one-ramadhan-ef6ea',
    storageBucket: 'one-ramadhan-ef6ea.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAdtUtk2Oew3WLo6Hi4ElJYq5XPd76_D1E',
    appId: '1:233530265468:ios:a23782ca31b645627ddef9',
    messagingSenderId: '233530265468',
    projectId: 'one-ramadhan-ef6ea',
    storageBucket: 'one-ramadhan-ef6ea.appspot.com',
    iosBundleId: 'stayupsolution.com.oneramadhan',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAdtUtk2Oew3WLo6Hi4ElJYq5XPd76_D1E',
    appId: '1:233530265468:ios:a23782ca31b645627ddef9',
    messagingSenderId: '233530265468',
    projectId: 'one-ramadhan-ef6ea',
    storageBucket: 'one-ramadhan-ef6ea.appspot.com',
    iosBundleId: 'stayupsolution.com.oneramadhan',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCM8Qyxynm3EnDWksoN1Tm66h0yo3OHbTQ',
    appId: '1:233530265468:web:0d28c7e3ebd054a37ddef9',
    messagingSenderId: '233530265468',
    projectId: 'one-ramadhan-ef6ea',
    authDomain: 'one-ramadhan-ef6ea.firebaseapp.com',
    storageBucket: 'one-ramadhan-ef6ea.appspot.com',
    measurementId: 'G-49QG7M44V0',
  );
}
