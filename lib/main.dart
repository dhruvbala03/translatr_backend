import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:translatr_backend/firebase_options.dart';
import 'package:translatr_backend/ui/home_page.dart';

import 'resources/auth_tings.dart';
import 'ui/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;

    // TODO: setup structured navigation system that allows back and forth
    return MaterialApp(
      title: 'Translatr Backend',
      home:
          (user == null) ? LoginPage() : HomePage(user: AuthTings.currentUser),
    );
  }
}