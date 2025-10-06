import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD-nUBms3yJQ-qFC7cYIREvSR_Lq51kXQE",
            authDomain: "my-ai-9ebb9.firebaseapp.com",
            projectId: "my-ai-9ebb9",
            storageBucket: "my-ai-9ebb9.firebasestorage.app",
            messagingSenderId: "609605364213",
            appId: "1:609605364213:web:70b6248fb928aa7af518bc",
            measurementId: "G-ENM5Q2QDZ6"));
  } else {
    await Firebase.initializeApp();
  }
}
