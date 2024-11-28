import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDFVlmnfCW3Ds9uTwNthWVESDg8gh4Xcz8",
            authDomain: "aastu-students-demo.firebaseapp.com",
            projectId: "aastu-students-demo",
            storageBucket: "aastu-students-demo.firebasestorage.app",
            messagingSenderId: "187180178121",
            appId: "1:187180178121:web:ab9de4827e315637e98b18",
            measurementId: "G-6KVGPC89QY"));
  } else {
    await Firebase.initializeApp();
  }
}
