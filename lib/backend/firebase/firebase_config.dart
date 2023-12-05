import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCOsLgk-uxe5RMn8RQB_wtzS3ISSK5IzmU",
            authDomain: "travel-app-qrtzv0.firebaseapp.com",
            projectId: "travel-app-qrtzv0",
            storageBucket: "travel-app-qrtzv0.appspot.com",
            messagingSenderId: "125611892475",
            appId: "1:125611892475:web:e6474e78fa9cf372361a5e"));
  } else {
    await Firebase.initializeApp();
  }
}
