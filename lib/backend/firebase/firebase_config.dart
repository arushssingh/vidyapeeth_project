import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDGBinhevlOEv27F4TeOa2tjahH3g1gcQQ",
            authDomain: "vid-project-53788.firebaseapp.com",
            projectId: "vid-project-53788",
            storageBucket: "vid-project-53788.firebasestorage.app",
            messagingSenderId: "911706838300",
            appId: "1:911706838300:web:c275fe198337f8cab396d9"));
  } else {
    await Firebase.initializeApp();
  }
}
