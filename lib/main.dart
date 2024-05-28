import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:para_recommand_app/view/landingpage.dart';
import 'package:para_recommand_app/view/login_page.dart';
import 'package:para_recommand_app/view/sign_up.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
