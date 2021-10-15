import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mediraqcus/firstscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
        key: key,
      ),
    );
  }
}
