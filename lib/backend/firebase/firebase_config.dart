import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAxC3iQKi6NNI9lbQvJdE-0pZF9huvv6vA",
            authDomain: "todo-jb7z2r.firebaseapp.com",
            projectId: "todo-jb7z2r",
            storageBucket: "todo-jb7z2r.appspot.com",
            messagingSenderId: "41162800097",
            appId: "1:41162800097:web:638d44d6ec35dbb2a630a0"));
  } else {
    await Firebase.initializeApp();
  }
}
