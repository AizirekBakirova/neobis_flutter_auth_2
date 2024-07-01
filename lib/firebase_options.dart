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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCSHuU2MD6AfvsRPTZv0hp0jMthiNHr9hY',
    appId: '1:730638967650:android:cb2187f4c1d389d30b423b',
    messagingSenderId: '730638967650',
    projectId: 'neobis-flutter-auth-2',
    storageBucket: 'neobis-flutter-auth-2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0o89KvvGHzXGsVlAq6sFnz8T3SuEWfEI',
    appId: '1:730638967650:ios:ebc3d81e1f98fac30b423b',
    messagingSenderId: '730638967650',
    projectId: 'neobis-flutter-auth-2',
    storageBucket: 'neobis-flutter-auth-2.appspot.com',
    iosBundleId: 'com.example.neobisFlutterAuth2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAiLcWzlkxIGB_Hh5ZyQgOS2qpBcldz8KE',
    appId: '1:730638967650:web:6131cf3c635e1e160b423b',
    messagingSenderId: '730638967650',
    projectId: 'neobis-flutter-auth-2',
    authDomain: 'neobis-flutter-auth-2.firebaseapp.com',
    storageBucket: 'neobis-flutter-auth-2.appspot.com',
    measurementId: 'G-CQD6QX49ME',
  );
}
