import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:panda/responsive/mobile_screen_layout.dart';
import 'package:panda/responsive/responsive_layout_screen.dart';
import 'package:panda/responsive/web_screen_layout.dart';
import 'package:panda/screens/login_screen.dart';
import 'package:panda/screens/signup_screen.dart';
import 'package:panda/utils/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDK-O9IsBAXhmVMz05THPnaCnVwM9eAb00",
          appId: "1:846570771889:web:926cab47e40cdd22005990",
          messagingSenderId: "846570771889",
          projectId: "panda-8e719",
          storageBucket: 'panda-8e719.appspot.com'),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panda',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      home: SignupScreen(),
    );
  }
}
