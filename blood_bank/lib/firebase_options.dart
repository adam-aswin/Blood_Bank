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
    apiKey: 'AIzaSyAvS7doG2Rj_WeGGfqxdwxGK2J4KDCyfVI',
    appId: '1:109496468485:web:28f8660344621a2501886c',
    messagingSenderId: '109496468485',
    projectId: 'crud-c351b',
    authDomain: 'crud-c351b.firebaseapp.com',
    storageBucket: 'crud-c351b.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDphVIwdX4FRpgX40e_TeP6WTCdyira0so',
    appId: '1:109496468485:android:3a143fee5aa2619b01886c',
    messagingSenderId: '109496468485',
    projectId: 'crud-c351b',
    storageBucket: 'crud-c351b.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAvS7doG2Rj_WeGGfqxdwxGK2J4KDCyfVI',
    appId: '1:109496468485:web:d2a28022d5803eea01886c',
    messagingSenderId: '109496468485',
    projectId: 'crud-c351b',
    authDomain: 'crud-c351b.firebaseapp.com',
    storageBucket: 'crud-c351b.firebasestorage.app',
  );

}