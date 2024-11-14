import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCbIpJ-AToQtKctbDYb3gQdbM4Z4BWak5c",
            authDomain: "aastu-students.firebaseapp.com",
            projectId: "aastu-students",
            storageBucket: "aastu-students.appspot.com",
            messagingSenderId: "1086867016849",
            appId: "1:1086867016849:web:5d5fb61d2fc03d7d26c330",
            measurementId: "G-M70GF8N18X"));
  } else {
    await Firebase.initializeApp();
  }
}
