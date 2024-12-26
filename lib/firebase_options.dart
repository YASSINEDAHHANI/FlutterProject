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
    apiKey: 'AIzaSyArpd6X-dhK9HVBZ7v0sOS0jZVURPZMpXE',
    appId: '1:979776431783:web:9b425e0ebe84411f399d82',
    messagingSenderId: '979776431783',
    projectId: 'projectflutter-6fd29',
    authDomain: 'projectflutter-6fd29.firebaseapp.com',
    storageBucket: 'projectflutter-6fd29.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAiezD8HgjIavjTuzMe5_-lraAOOV0Sw9I',
    appId: '1:979776431783:android:7f78ebb140974a5f399d82',
    messagingSenderId: '979776431783',
    projectId: 'projectflutter-6fd29',
    storageBucket: 'projectflutter-6fd29.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8y-Ui0HputFWBvEQ5aJa6_vo6RzPyIC0',
    appId: '1:979776431783:ios:2fb30ca7cf4f077c399d82',
    messagingSenderId: '979776431783',
    projectId: 'projectflutter-6fd29',
    storageBucket: 'projectflutter-6fd29.firebasestorage.app',
    iosBundleId: 'com.example.flutterproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD8y-Ui0HputFWBvEQ5aJa6_vo6RzPyIC0',
    appId: '1:979776431783:ios:2fb30ca7cf4f077c399d82',
    messagingSenderId: '979776431783',
    projectId: 'projectflutter-6fd29',
    storageBucket: 'projectflutter-6fd29.firebasestorage.app',
    iosBundleId: 'com.example.flutterproject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyArpd6X-dhK9HVBZ7v0sOS0jZVURPZMpXE',
    appId: '1:979776431783:web:3b3657d0dde801f7399d82',
    messagingSenderId: '979776431783',
    projectId: 'projectflutter-6fd29',
    authDomain: 'projectflutter-6fd29.firebaseapp.com',
    storageBucket: 'projectflutter-6fd29.firebasestorage.app',
  );
}