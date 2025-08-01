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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBlffPRdb729RcxNuk8R3Blbn3xOkxVf4k',
    appId: '1:573628579018:web:821666dc86197aee2f4833',
    messagingSenderId: '573628579018',
    projectId: 'naily-13f98',
    authDomain: 'naily-13f98.firebaseapp.com',
    storageBucket: 'naily-13f98.firebasestorage.app',
    measurementId: 'G-310ME4JN9R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHQ5Gea0QJPHd8r7zw209Xl8uyN8qVMos',
    appId: '1:573628579018:android:971f2ea366ce54682f4833',
    messagingSenderId: '573628579018',
    projectId: 'naily-13f98',
    storageBucket: 'naily-13f98.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXSaoa-0ORNebOTe6KQczeWJP9TNAT7jM',
    appId: '1:573628579018:ios:4476e30f54bac23b2f4833',
    messagingSenderId: '573628579018',
    projectId: 'naily-13f98',
    storageBucket: 'naily-13f98.firebasestorage.app',
    iosClientId: '573628579018-0cdr92n6odne3qfagd8kmv2td7ua58gq.apps.googleusercontent.com',
    iosBundleId: 'com.example.naily',
  );

}