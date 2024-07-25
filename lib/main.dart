import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app/responsive/mobile_screen_layout.dart';
import 'package:shoping_app/responsive/responsive_layout.dart';
import 'package:shoping_app/responsive/web_screen_layout.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyCm0pV9fWkr201J9bULFACqwvtxNslE69A',
            appId: "1:620980868197:web:3aa5ba57e8648a0b87628c",
            storageBucket: "inastagaramapp.appspot.com",
            messagingSenderId: "620980868197",
            projectId: "inastagaramapp"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Check',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
