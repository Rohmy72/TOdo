import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_2GFeNBmBf7AArrI6AzpScvqaUo9RAzs",
            authDomain: "to-do-app-d0ac2.firebaseapp.com",
            projectId: "to-do-app-d0ac2",
            storageBucket: "to-do-app-d0ac2.firebasestorage.app",
            messagingSenderId: "641494550549",
            appId: "1:641494550549:web:be37586f44b34d18efe61c",
            measurementId: "G-2MEKE9D2JD"));
  } else {
    await Firebase.initializeApp();
  }
}
