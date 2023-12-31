// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members, non_constant_identifier_names
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;




/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
///await Firebase.initializeApp(
/// options: DefaultFirebaseOptions.currentPlatform,
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
    apiKey: 'AIzaSyDWnGBNJ7QncUh8Y7WK_lFnsXRExcZviTU',
    appId: '1:152432787858:web:8b3803ab68250330d7014b',
    messagingSenderId: '152432787858',
    projectId: 'app-diabetes-9b5b9',
    authDomain: 'app-diabetes-9b5b9.firebaseapp.com',
    storageBucket: 'app-diabetes-9b5b9.appspot.com',
    measurementId: 'G-E29G8ETGS6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRqnchw239p5Pp8SVl3AkNBp-FpnaVyZg',
    appId: '1:152432787858:android:13b0e34588edba0fd7014b',
    messagingSenderId: '152432787858',
    projectId: 'app-diabetes-9b5b9',
    storageBucket: 'app-diabetes-9b5b9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBnADYmOJJEeeM0sN6qIRns0o_ob4YtHNQ',
    appId: '1:152432787858:ios:b702592f90106a9cd7014b',
    messagingSenderId: '152432787858',
    projectId: 'app-diabetes-9b5b9',
    storageBucket: 'app-diabetes-9b5b9.appspot.com',
    iosClientId: '152432787858-bk3kd80lpo6c25dtt9v868q7nk75qgsv.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterDiabetes1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBnADYmOJJEeeM0sN6qIRns0o_ob4YtHNQ',
    appId: '1:152432787858:ios:f9b224afdc436e63d7014b',
    messagingSenderId: '152432787858',
    projectId: 'app-diabetes-9b5b9',
    storageBucket: 'app-diabetes-9b5b9.appspot.com',
    iosClientId: '152432787858-91tldjcjv2chjv6ke8oah60qusr9eq73.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterDiabetes1.RunnerTests',
  );
}
