import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBtvUZa00bAhBFhlePmmxrS5lTCVXMKLE0",
            authDomain: "brookreator-56331.firebaseapp.com",
            projectId: "brookreator-56331",
            storageBucket: "brookreator-56331.appspot.com",
            messagingSenderId: "323206026144",
            appId: "1:323206026144:web:94a87eb1d9cba6e19c4ac5",
            measurementId: "G-X4X1MC3KCH"));
  } else {
    await Firebase.initializeApp();
  }
}
