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
    apiKey: 'AIzaSyBXa3G3uEhgXvXSavCFPMWtt0Dho1Ndivg',
    appId: '1:380250796544:web:1159eb502046a212861ee5',
    messagingSenderId: '380250796544',
    projectId: 'schoolproject-be305',
    authDomain: 'schoolproject-be305.firebaseapp.com',
    databaseURL: 'https://schoolproject-be305-default-rtdb.firebaseio.com',
    storageBucket: 'schoolproject-be305.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxpuaTJasM5ZZEZlN-e9GZKL0LUMfA4u8',
    appId: '1:380250796544:android:969ea739e1e4cd1a861ee5',
    messagingSenderId: '380250796544',
    projectId: 'schoolproject-be305',
    databaseURL: 'https://schoolproject-be305-default-rtdb.firebaseio.com',
    storageBucket: 'schoolproject-be305.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4FFVhiqm_xrCV1hc4GdOMC1hOXPsiMuc',
    appId: '1:380250796544:ios:9d50268990dc919f861ee5',
    messagingSenderId: '380250796544',
    projectId: 'schoolproject-be305',
    databaseURL: 'https://schoolproject-be305-default-rtdb.firebaseio.com',
    storageBucket: 'schoolproject-be305.appspot.com',
    iosBundleId: 'com.example.studentProjectApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4FFVhiqm_xrCV1hc4GdOMC1hOXPsiMuc',
    appId: '1:380250796544:ios:9d50268990dc919f861ee5',
    messagingSenderId: '380250796544',
    projectId: 'schoolproject-be305',
    databaseURL: 'https://schoolproject-be305-default-rtdb.firebaseio.com',
    storageBucket: 'schoolproject-be305.appspot.com',
    iosBundleId: 'com.example.studentProjectApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBXa3G3uEhgXvXSavCFPMWtt0Dho1Ndivg',
    appId: '1:380250796544:web:1c7053e51ec3f3a2861ee5',
    messagingSenderId: '380250796544',
    projectId: 'schoolproject-be305',
    authDomain: 'schoolproject-be305.firebaseapp.com',
    databaseURL: 'https://schoolproject-be305-default-rtdb.firebaseio.com',
    storageBucket: 'schoolproject-be305.appspot.com',
  );
}
